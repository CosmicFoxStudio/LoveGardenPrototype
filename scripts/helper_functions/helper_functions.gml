/*	Returns:
	1 if the down key is pressed, 
	-1 if the up key is pressed, 
	0 if both or neither are pressed.
*/
function CheckVerticalInput() {	
	return global.PRESSED_DOWN - global.PRESSED_UP;
}

/*	Returns:
	1 if the right key is pressed, 
	-1 if the left key is pressed, 
	0 if both or neither are pressed.
*/
function CheckHorizontalInput() {
	return global.PRESSED_RIGHT - global.PRESSED_LEFT;	
}
