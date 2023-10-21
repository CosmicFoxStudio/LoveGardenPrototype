// Desenhar personagens, texto e opções

draw_set_font(fnt_teste2);
draw_set_valign(fa_middle);

var _marginText = 128;     // Horizontal text margin
var _marginChar = 200;     // Horizontal character margin

if IsChatterbox(chatterbox) and text != undefined {
	var _me = (ChatterboxGetContentSpeaker(chatterbox, 0) == "Me");
	
	// Setar tamanho e cor do sprite do personagem
	draw_sprite_ext(Plantas, 0, _marginChar,              room_height, size[_me],  size[_me],  0, color[_me],  1);
	draw_sprite_ext(Plantas, 1, room_width - _marginChar, room_height, size[!_me], size[!_me], 0, color[!_me], 1);
	
	// Desenhar texto
	var _yy = room_height - (_marginText/2);
	
	draw_rectangle_center(room_width/2, _yy, room_width, _marginText,  false, c_black, 0.5);
	
	draw_set_halign(_me ? fa_left : fa_right);
	var _xx = _me ? _marginText : room_width - _marginText;
	draw_text(_xx, _yy, text);
	
	// Se tem opções, colocar no meio da tela
	if ChatterboxGetOptionCount(chatterbox) {
		draw_set_halign(fa_center);
		
		var _width = 400;
		var _height = 64;
		
		// Lógica para colocar sempre 3 opções
		for (var i = 0; i < ChatterboxGetOptionCount(chatterbox); i++) {
			if ChatterboxGetOptionConditionBool(chatterbox, i) {
				_xx = room_width/2;
				_yy = (room_height/6) * (i+2);
				
				draw_rectangle_center(_xx, _yy, _width, _height, false, c_black, 0.5);
				
				var _icon = "";
				if (option_index == i) _icon = "> ";
				var _option = ChatterboxGetOption(chatterbox, i);
				
				draw_text(_xx, _yy, _icon + _option);
			}
		}
	}
}