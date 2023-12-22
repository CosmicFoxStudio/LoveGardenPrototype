// Select Phase
if (phase == "SELECT") {
	// Keyboard Input - Move inside menu
	pos += CheckVerticalInput();

	// Wrap menu
	if (pos >= option_length) pos = 0; // goes back to first pos
	if pos < 0 pos = option_length - 1; // goes to last pos

	// Mouse Input - Handle mouse hover
	var isMouseHoveringMenu = false;
	for (var i = 0; i < option_length; i++) {
	    var button_y = y + option_margin * i;

		// Checking if mouse cursor is inside boundaries of lang menu
	    if (mouse_x >= x && mouse_x <= x + width &&
	        mouse_y >= button_y && mouse_y <= button_y + option_margin) {
			isMouseHoveringMenu = true;
	        pos = i;
			break; // Exit the loop once it finds a hovered option
	    }
		else {
			isMouseHoveringMenu = false;
		}	
	}

	// Choose a language
	if ( (isMouseHoveringMenu && global.MOUSE_CONFIRM) || global.SPACE_CONFIRM) {
		switch(pos) {
			case 0: 
				phase = "CONFIRM";
				global.lang = "en";
				exit;
			break;
	
			case 1: 
				phase = "CONFIRM";
				global.lang = "pt";
				exit;
			break;
		}
	}
}

// Confirm Phase
if (phase == "CONFIRM") {
		
	// Mouse Input
	cancelButtonIsHovering = cancelButton.hovering;
	confirmButtonIsHovering = confirmButton.hovering;
	
	// Make buttons available
	cancelButton.unavailable = false;
	confirmButton.unavailable = false;

	// MOUSE ENTER LOGIC
	if (cancelButtonIsHovering) { // Mouse entered left button area
		// Change appearance when hovering
		cancelButton.selected = true; 
		pos_buttons = 0;
		
	    // Player cancelled the selection
	    if (global.MOUSE_CONFIRM) {
			selected_button = "CANCEL";
			
		}
	} else if (confirmButtonIsHovering) { // Mouse entered right button area
		// Change appearance when hovering
		confirmButton.selected = true;
		pos_buttons = 1;
	    
		// Player confirmed the selection
		if (global.MOUSE_CONFIRM) {
			selected_button = "CONFIRM";
		}
	}

	// MOUSE LEAVE LOGIC
	if (!cancelButtonIsHovering) {  
		// Mouse left the left button - Button goes back to unselected appearance
		cancelButton.selected = false;
	}
	
	if (!confirmButtonIsHovering) { 
		//  Mouse left the right button - Button goes back to unselected appearance
		confirmButton.selected = false;
	}

	// Keyboard Input
	if (global.PRESSED_LEFT) {					
		pos_buttons = 0;
	}
	else if (global.PRESSED_RIGHT) {
		pos_buttons = 1;
	} 
	
	if (global.SPACE_CONFIRM) {
		// Player cancelled the selection
		if (pos_buttons == 0) {
			selected_button = "CANCEL";
		}
		// Player confirmed the selection
		else if (pos_buttons == 1) {
			selected_button = "CONFIRM";
	    }
	}
}

// Goes back to Select Phase
if (selected_button == "CANCEL") {
	phase = "SELECT";
	selected_button = "NONE";
			
	// Reset Button State
	// confirmButton.unavailable = true;	
}

// Goes to next room
if (selected_button == "CONFIRM") {
	phase = "SELECT";
	selected_button = "NONE";
	// (Should probably call a screen transition in here)
	room_goto_next();
}
