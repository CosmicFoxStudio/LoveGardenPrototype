/// @description Desenhar menu

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

// Desenhar as opções
for (var i = 0; i < option_length; i++) {

	var _cor = c_white;
	
	// Opção foi selecionada
	if (pos == i && confirmPhase == true) {
		// Na iteração atual, a cor do texto muda
		_cor = c_yellow;
		
		/* 
		OBS: 
			A caixa de seleção tá sendo desenhada 
			no obj_lang_selection.
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

//var _btn_confirm_alpha = obj_lang_menu_btn_confirm.image_alpha;
//var _btn_cancel_alpha = obj_lang_menu_btn_cancel.image_alpha;

if (confirmPhase) { 
	if (pos_buttons == 0) {
		// Selected button
		obj_lang_menu_btn_cancel.hovered = true;  
	} 
	else if (pos_buttons == 1) {
		// Selected button
		obj_lang_menu_btn_confirm.hovered = true;
	}
}
else {
	// Both unavailable
	obj_lang_menu_btn_confirm.unavailable = true; 
	obj_lang_menu_btn_cancel.unavailable = true; 	
}

var _btn_width = 125;

// Cancel Text
if (global.lang == "en") {
	draw_text_ext_color(
		230, 255, translatable_text[e_language.EN][e_lang_menu_options.CANCEL], 1, _btn_width,
		c_white, c_white, c_white, c_white, obj_lang_menu_btn_cancel.image_alpha
	);
}
else if (global.lang == "pt") {
	draw_text_ext_color(
		230, 255, translatable_text[e_language.PT][e_lang_menu_options.CANCEL], 1, _btn_width,
		c_white, c_white, c_white, c_white, obj_lang_menu_btn_cancel.image_alpha
	);
	
}

//Confirm Text
if (global.lang == "en") {
	draw_text_ext_color(
		380, 255, translatable_text[e_language.EN][e_lang_menu_options.CONFIRM], 1, _btn_width,
		c_white, c_white, c_white, c_white, obj_lang_menu_btn_confirm.image_alpha
	);
}
else if (global.lang == "pt") {
	draw_text_ext_color(
		380, 255, translatable_text[e_language.PT][e_lang_menu_options.CONFIRM], 1, _btn_width,
		c_white, c_white, c_white, c_white, obj_lang_menu_btn_confirm.image_alpha
	);
}

#endregion Buttons (Confirm Phase)

// Reset
draw_set_valign(-1);
draw_set_halign(-1);
draw_set_alpha(1);