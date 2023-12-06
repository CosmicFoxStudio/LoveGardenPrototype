// Select Phase
if (selected == false) {
	// Mover no menu
	pos += f_checkVerticalInput();

	// Wrap menu
	if (pos >= option_length) pos = 0; // volta p/ pos 1
	if pos < 0 pos = option_length - 1; // vai pra última pos

	// Escolher uma opção de linguagem
	if (global.SPACE_CONFIRM) {
		switch(pos) {
			case 0: 
				selected = true;
				global.lang = "EN";
			break;
	
			case 1: 
				selected = true;
				global.lang = "PT";
			break;
		}
	}
}

// Confirm Phase
if (selected == true) {
	if (keyboard_check_pressed(vk_left)) {
		pos_buttons = 0;
	}
	else if (keyboard_check_pressed(vk_right)) {
		pos_buttons = 1;
	} 
	
	if (global.SPACE_CONFIRM) {
		if (pos_buttons == 0) {
			selected_button = "CANCEL";
			selected = false;
		}
		else if (pos_buttons == 1) {
			selected_button = "CONFIRM";
			room_goto_next();
	    }
	}
}

