/// @description 

var _count = ChatterboxGetOptionCount(chatterbox); // número de opções

// Esperando por user input ou esperando pela escolha da opção
if ChatterboxIsWaiting(chatterbox) {
    if (global.SPACE_CONFIRM || global.MOUSE_CONFIRM) {
        ChatterboxContinue(chatterbox);
        chatterbox_update();
    }
	
// Se tiver opções para escolher	
} else if _count {
	var key_up = keyboard_check_pressed(vk_up);
    var key_down = keyboard_check_pressed(vk_down);
	
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
	var _key = key_down - key_up;
	repeat(1 + (ChatterboxGetOptionConditionBool(chatterbox, wrap(option_index + _key, 0, _count - 1)) == false)) {
		option_index = wrap(option_index + _key, 0, _count - 1);
	}
	
    // Confirmação da opção 
    if  (
		global.SPACE_CONFIRM || 
		(global.MOUSE_CONFIRM && option_hovered != -1)
	) {
        ChatterboxSelect(chatterbox, option_index);
        audio_play_sound(snd_test, 0, false, 1, 0, random_range(0.8, 1.2));
		
        var _metadata = ChatterboxGetContentMetadata(chatterbox, 0);
        if (array_length(_metadata) > 0) {
            if (_metadata[0] != "") { global.status.hidratacao = wrapInside(obj_waterbar.fillBar + real(_metadata[0]), 0, 10); obj_waterbar.fillBar = global.status.hidratacao; }
            if (_metadata[1] != "") { global.status.humor = wrapInside(obj_sunbar.fillBar + real(_metadata[1]), 0, 10); obj_sunbar.fillBar = global.status.humor; }
            if (_metadata[2] != "") { global.status.nutricao = wrapInside(obj_earthbar.fillBar + real(_metadata[2]), 0, 10); obj_earthbar.fillBar = global.status.nutricao; }
            if (_metadata[3] != "") audio_play_sound(asset_get_index(_metadata[3]), 10, false);
            if (_metadata[4] != "") flag(_metadata[4]);
        }
        option_index = 0;
        chatterbox_update();
    }
}

// Chegou no fim do chatterbox
if ChatterboxIsStopped(chatterbox) {
    instance_destroy();
}












