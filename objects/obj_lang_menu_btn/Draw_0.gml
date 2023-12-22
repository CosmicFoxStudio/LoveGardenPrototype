/// @description Change button appearance
draw_self();

draw_set_font(fnt_dialogue);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

var textColor = c_white; 

if (!unavailable) {
    // Check the hovering state based on the button type
    if (hovering) {
        textColor = c_yellow;
    } else {
        textColor = c_white;
    }
}

// Draw text with the calculated color
var languageIndex = (global.lang == "en") ? e_language.EN : e_language.PT;


draw_text_ext_color(
	x, y, 
	(btnType == "CANCEL") ? obj_lang_menu.translatable_text[languageIndex][e_lang_menu_options.CANCEL] : obj_lang_menu.translatable_text[languageIndex][e_lang_menu_options.CONFIRM], 
	1, btnWidth,
	textColor, textColor, textColor, textColor, 
	image_alpha
);

// When the button is unavailable, its alpha is halved
if (unavailable) {
	image_index = 0; // Reset Image Index
	image_alpha = 0.5; 
}
else {
	image_alpha = 1;	
}

// Reset
draw_set_valign(-1);
draw_set_halign(-1);
draw_set_alpha(1);
