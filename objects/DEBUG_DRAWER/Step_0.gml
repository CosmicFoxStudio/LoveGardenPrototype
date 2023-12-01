#region MOUSE

if mouse_check_button_pressed(mb_left) {
	click_x = mouse_x;
	click_y = mouse_y;
}

// Converts mouse room coordinates to mouse GUI coordinates
click_GUI_x = device_mouse_x_to_gui(0);
click_GUI_y = device_mouse_y_to_gui(0);

#endregion MOUSE
