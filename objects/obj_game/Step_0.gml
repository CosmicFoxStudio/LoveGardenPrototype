#region CONFIRM

// TIP: Keyboard and mouse functions only register for 1 frame

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

#region CIMA / BAIXO

if	(gamepad_button_check_pressed(0, gp_padu)) ||
	(keyboard_check_pressed(vk_up)) ||
	(keyboard_check_pressed(ord("W"))){

	global.PRESSED_UP = true;
}else{ 
	global.PRESSED_UP = false;
}

if	(gamepad_button_check_pressed(0, gp_padd)) ||
	(keyboard_check_pressed(vk_down)) ||
	(keyboard_check_pressed(ord("S"))){

	global.PRESSED_DOWN = true;
}else{
	global.PRESSED_DOWN = false;
}

#endregion CIMA/BAIXO
