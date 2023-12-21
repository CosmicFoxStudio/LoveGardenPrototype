/// @description 

var _count = ChatterboxGetOptionCount(chatterbox); // número de opções

// Esperando por user input ou esperando pela escolha da opção
if ChatterboxIsWaiting(chatterbox) {
    if (global.SPACE_CONFIRM || global.MOUSE_CONFIRM) {
		#region METADATA 
		var _once = false;
	    var _metadata = ChatterboxGetContentMetadata(chatterbox, 0);
		// Se tiver metadados no conteúdo daquela linha
		if (_once == false) {
		    if (array_length(_metadata) > 0) {
				// EXPRESSÃO - Índice da subimagem (frame) da expressão de personagem
				if (_metadata[0] != "") {
					characterExpressionOnScreen(real(_metadata[0]));
					_once = true;
				}
				// HIDRATAÇÃO - Adiciona/remove pontos do status "hidratação"
		        if (_metadata[1] != "") { 
					global.status.hidratacao = wrapInside(obj_waterbar.fillBar + real(_metadata[1]), 0, 10); 
					obj_waterbar.fillBar = global.status.hidratacao; 
					_once = true;
				}
				// HUMOR - Adiciona/remove pontos do status "humor"
		        if (_metadata[2] != "") { 
					global.status.humor = wrapInside(obj_sunbar.fillBar + real(_metadata[2]), 0, 10); 
					obj_sunbar.fillBar = global.status.humor; 
					_once = true;
				}
				// NUTRIÇÃO - Adiciona/remove pontos do status "nutrição"
		        if (_metadata[3] != "") { 
					global.status.nutricao = wrapInside(obj_earthbar.fillBar + real(_metadata[3]), 0, 10); 
					obj_earthbar.fillBar = global.status.nutricao; 
					_once = true;
				}
				// SOM - Dê o nome do sound asset
		        if (_metadata[4] != "" && _metadata[4] != "0") {
					audio_play_sound(asset_get_index(_metadata[4]), 10, false);
					_once = true;
				}
				// FLAG - Dê o nome da flag
		        if (_metadata[5] != "") {
					flag(_metadata[5]);
					_once = true;
				}
		    }
		}
		#endregion METADATA 

        ChatterboxContinue(chatterbox);
        chatterbox_update();
    }
	
// Se tiver opções para escolher	
} else if _count {	
	// Precisa ser reiniciada em todo início do loop (ou então torná-la local)
	option_hovered = -1;
	
    // Mouse input
    for (var i = 0; i < _count; i++) {
        var _xx = room_width / 2;
        var _yy = (room_height / 6) * (i + 2) - 30;
        var _width = 450;
        var _height = 32;

        if (point_in_rectangle(mouse_x, mouse_y, _xx - _width / 2, _yy - _height / 2, _xx + _width / 2, _yy + _height / 2)) {
            option_hovered = i; // Guarda a opção quando hovering
			option_index = i; // Atualiza option_index com base na opção quando hovering
			
			// Encontrou uma opção selecionada, sai do loop
			break;
        }
		else {
			option_hovered = -1;	
		}
    }

	// Keyboard input
	var _key = CheckVerticalInput();
	repeat(1 + (ChatterboxGetOptionConditionBool(chatterbox, wrap(option_index + _key, 0, _count - 1)) == false)) {
		option_index = wrap(option_index + _key, 0, _count - 1);
	}
	
    // Confirmação da opção 
    if  (
			global.SPACE_CONFIRM || 
			(global.MOUSE_CONFIRM && option_hovered != -1)
		) 
	{
        ChatterboxSelect(chatterbox, option_index);
        audio_play_sound(snd_test, 0, false, 1, 0, random_range(0.8, 1.2));
		
        option_index = 0;
        chatterbox_update();
    }
}

// Chegou no fim do chatterbox
if ChatterboxIsStopped(chatterbox) {
    instance_destroy();
}
