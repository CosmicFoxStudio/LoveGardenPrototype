#region CONFIRM

// Mouse
if	(mouse_check_button_pressed(mb_left)) {
		global.MOUSE_CONFIRM = true;
		//global.PRESSED_CONFIRM = true;
}else{
	global.MOUSE_CONFIRM = false;
}

// Espaço
if (keyboard_check_pressed(vk_space)) {
	global.SPACE_CONFIRM = true;
	//global.PRESSED_CONFIRM = true;
}else{
	global.SPACE_CONFIRM = false;
}

//global.PRESSED_CONFIRM = false;

#endregion CONFIRM
