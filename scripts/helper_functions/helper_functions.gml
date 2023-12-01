/// Returns 1 if the down key is pressed, -1 if the up key is pressed, and 0 if both or neither are pressed.
function f_checkVerticalInput() {	
	return global.PRESSED_DOWN - global.PRESSED_UP;
}
