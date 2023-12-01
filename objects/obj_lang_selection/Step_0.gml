if (can_initialize) {
	if (!initialized) {
		// Centralizar e equalizar posição com a do menu
	    x = obj_lang_menu.x;
	    target_y = obj_lang_menu.y;
	    y = target_y;
	    initialized = true;
	}
}

var _selected_option = obj_lang_menu.pos;

// Check if the selected option has changed
if (_selected_option != previous_selected_option) {
    // Update target position based on the new selection
    target_y = obj_lang_menu.y +
	obj_lang_menu.option_margin * _selected_option;
    
    // Save the current selected option for the next frame
    previous_selected_option = _selected_option;
}
	// Apply tweening effect to the y-coordinate
	y += (target_y - y) * tween_speed;
