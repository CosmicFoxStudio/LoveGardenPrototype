/// @description Desenhar menu

draw_set_font(fnt_dialogue);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

if (global.DEBUG) {
	draw_text(120, 20, global.lang); 	
}

// Calcular altura do menu dinamicamente com base no número de opções
// Height
var _padding = option_padding_v*2;
var _string_height = string_height(option[0]);
var _vertical_space = (option_length-1)*option_margin;
var _new_height = _padding + _string_height + _vertical_space
height = _new_height;

// Centralizar o menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - height/2;

// Desenhar a box do menu
var _scale_x = width*(1/sprite_width); // --> 1
var _scale_y = height*(1/sprite_height); // --> 1
draw_sprite_ext( 
	sprite_index, image_index, x, y, 
	_scale_x, _scale_y, // --> Retorna o fator de scale
	0, c_white, 1
);

// Desenhar as opções
for (var i = 0; i < option_length; i++) {
	var _cor = c_white; 
	// Na iteração atual, a cor muda para mostrar o texto selecionado
	if (pos == i) _cor = c_yellow;
	draw_text_color(
		x + option_padding_h, 
		y + option_padding_v + option_margin*i, 
		option[i], 
		_cor, _cor, _cor, _cor, 
		1
	);
}

// Reset
draw_set_valign(-1);
draw_set_halign(-1);
