/// @description Draw the menu

draw_set_font(fnt_menu);
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


#region DESCRIPTION

// Draw description box



// Draw description text
var offset = 100;
if (global.lang == "en") {
	draw_text(
			camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,
			camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - offset,
			translatable_text[e_language.EN][e_lang_menu_options.DESCRIPTION]
		);
}
else if (global.lang == "pt") {
	draw_text(
		camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,
		camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - offset,
		translatable_text[e_language.PT][e_lang_menu_options.DESCRIPTION]
	);
}

#endregion DESCRIPTION

draw_set_font(fnt_dialogue);

// Draw language options
for (var i = 0; i < option_length; i++) {

	var _cor = c_white;
	
	// Option was selected
	if (pos == i && phase == "CONFIRM") {
		// Color changes in current iteration
		_cor = c_yellow;
		
		/* 
		OBS: 
			The selection box is being drawn inside obj_lang_selection.
														^-- (middle-click)
		*/
	}
	
	if (global.lang == "en") {
		draw_text_color(
			x + option_padding_h, 
			y + option_padding_v + option_margin*i, 
			option[e_language.EN][i], 
			_cor, _cor, _cor, _cor, 
			1
		);
	}
	else if (global.lang == "pt") {
		draw_text_color(
			x + option_padding_h, 
			y + option_padding_v + option_margin*i, 
			option[e_language.PT][i], 
			_cor, _cor, _cor, _cor, 
			1
		);
	}
}

#region Buttons (Confirm Phase)

if (phase == "CONFIRM") { 
	if (pos_buttons == 0) {
		// Selected button
	} 
	else if (pos_buttons == 1) {
		// Selected button
	}
}
else {
	// Both unavailable
	cancelButton.unavailable = true; 	
	confirmButton.unavailable = true; 
	
}

#endregion Buttons (Confirm Phase)

// Reset
draw_set_valign(-1);
draw_set_halign(-1);
draw_set_alpha(1);