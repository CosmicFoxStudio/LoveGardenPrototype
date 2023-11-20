// Desenhar texto e opções

draw_set_font(fnt_dialogue);
draw_set_valign(fa_middle);

var _marginText = 64;     // Horizontal text margin

if IsChatterbox(chatterbox) and text != undefined {
	// Desenhar texto
	var _yy = room_height - (_marginText/2) - 22;
	//draw_rectangle_center(room_width/2, _yy, room_width - 190, _marginText,  false, c_black, 0.5);
	
	draw_set_halign(fa_center);
	var _xx = room_width/2 + 22;
	draw_text(_xx, _yy, ChatterboxGetContentSpeech(chatterbox, 0));
	draw_text(room_width/2 - 230, room_height - (_marginText/2) - 8, ChatterboxGetContentSpeaker(chatterbox, 0));
	
	// Se tem opções, colocar no meio da tela
	if ChatterboxGetOptionCount(chatterbox) {
		draw_set_halign(fa_center);
		
		var _width = 450;
		var _height = 32;
		
		// Lógica para colocar sempre 3 opções
		for (var i = 0; i < ChatterboxGetOptionCount(chatterbox); i++) {
			if ChatterboxGetOptionConditionBool(chatterbox, i) {
				_xx = room_width/2;
				_yy = (room_height/6) * (i+2) - 30;
				
				draw_rectangle_center(_xx, _yy, _width, _height, false, c_black, 0.5);
				
				var _icon = "";
				if (option_index == i) _icon = "> ";
				var _option = ChatterboxGetOption(chatterbox, i);
				
				draw_text(_xx, _yy, _icon + _option);
			}
		}
	}
}