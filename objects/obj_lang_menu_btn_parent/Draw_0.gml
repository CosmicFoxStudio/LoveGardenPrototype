/// @description Change button appearance
draw_self();

if (!unavailable) {
	// Change specific button to hovered appearance based on the subimage
	if (btn == "cancel") {
		if (obj_lang_menu.pos_buttons == 0) {
			image_index = 1;	
		}
		else {
			image_index = 0;
		}
	}
	else if (btn == "confirm") {
		if (obj_lang_menu.pos_buttons == 1) {
			image_index = 1;	
		}
		else {
			image_index = 0;
		}
	}
}

// When the button is unavailable, its alpha is halved
if (unavailable) {
	image_index = 0; // Reset Image Index
	image_alpha = 0.5; 
}
else {
	image_alpha = 1;	
}
