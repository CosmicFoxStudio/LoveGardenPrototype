/// @description Desenhar menu

if (global.DEBUG) {
	draw_text(
		20, 80, 
		"Menu pos: " + "(" + string(x) + " / " + string(y) + ")"
	);
	draw_text(
		20, 120,
		"Selected? " + string(selected)
	);
	draw_text(
		20, 130,
		"Pressed Space: " + string(global.SPACE_CONFIRM)
	);
	draw_text(
		20, 140,
		"Pressed Cancel: " + string(global.BACKSPACE_CANCEL)
	);
	draw_text(
		20, 150,
		"Button Position: " + string(pos_buttons)
	);
	//draw_text(20, 160, filename_dir("lang/en_dialogues.csv"));
	//draw_text(20, 170, filename_dir(GM_project_filename));
	
}

draw_set_font(fnt_dialogue);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

// Calcular altura do menu dinamicamente com base no número de opções
// Height
var _padding = option_padding_v*2;
// var _string_height = string_height(option[0]);
var _vertical_space = (option_length-1)*option_margin;
var _new_height = _padding + _vertical_space; // + _string_height*2 (opção2)
height = _new_height;

// Centralizar o menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - height/2;

obj_lang_selection.can_initialize = true; 

// Desenhar a box do menu
var _scale_x = width*(1/sprite_width); // --> 1
var _scale_y = height*(1/sprite_height); // --> 1
draw_sprite_ext( 
	sprite_index, image_index, x, y, // - _string_height (opção2)
	_scale_x, _scale_y, // --> Retorna o fator de scale
	0, c_white, 1
);

// Desenhar as opções
for (var i = 0; i < option_length; i++) {

	var _cor = c_white; 
	// Opção selecionada
	if (pos == i && selected == true) {
		// Na iteração atual, a cor do texto muda
		_cor = c_yellow;
		
		/* 
		OBS: 
			A caixa de seleção tá sendo desenhada 
			no obj_lang_selection.
						^-- (middle-click)
		*/
	}
	
	draw_text_color(
		x + option_padding_h, 
		y + option_padding_v + option_margin*i, 
		option[i], 
		_cor, _cor, _cor, _cor, 
		1
	);
}

#region Buttons

var _btn_confirm_alpha = 1;
var _btn_cancel_alpha = 1;

if (selected) { 
	if (pos_buttons == 0) {
		_btn_confirm_alpha = 0.5; 
		_btn_cancel_alpha = 1; // Selected button
	} 
	else if (pos_buttons == 1) {
		_btn_confirm_alpha = 1; // Selected button
		_btn_cancel_alpha = 0.5; 
	}
}
else {
	// Both unavailable
	_btn_confirm_alpha = 0.5; 
	_btn_cancel_alpha = 0.5; 	
}

var _btn_width = 125;

// Cancel Button
draw_sprite_ext(
	spr_button_small, 
	0, 250, 260, 1, 1, 0, 
	c_white, _btn_cancel_alpha
);

// Cancel Text
draw_text_ext_color(
	230, 255, "Cancel", 1, _btn_width,
	c_white, c_white, c_white, c_white, _btn_cancel_alpha
);

//Confirm Button
draw_sprite_ext(
	spr_button_small, 
	0, 390, 260, 1, 1, 0, 
	c_white, _btn_confirm_alpha
);

//Confirm Text
draw_text_ext_color(
	380, 255, "Confirm", 1, _btn_width,
	c_white, c_white, c_white, c_white, _btn_confirm_alpha
);

#endregion Buttons

// Reset
draw_set_valign(-1);
draw_set_halign(-1);
draw_set_alpha(1);