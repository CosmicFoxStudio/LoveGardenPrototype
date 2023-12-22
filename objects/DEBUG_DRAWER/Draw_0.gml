draw_set_color(c_white);
draw_set_alpha(1);
draw_set_font(fnt_dialogue);

if (global.DEBUG) {
	#region GAME --- Press 1
	draw_text(20, 10, "last_click_x: " + string(click_x));
	draw_text(20, 20, "last_click_y: " + string(click_y));
	draw_text(20, 30, "mouse pos: " + "(" + string(mouse_x) + " / " + string(mouse_y) + ")");
	draw_text(20, 40, "mouse GUI pos: " + "(" + string(click_GUI_x) + " / " + string(click_GUI_y) + ")");
		#region GRID
		var _string = "Show Grid: G ";
		draw_text(room_width - string_width(_string), 10, _string);
	
		if (keyboard_check_pressed(ord("G"))) show_grid = !show_grid;
		if (show_grid) {
			draw_set_color(c_blue);
			draw_set_alpha(0.3);

			// Draw horizontal lines
			for (var i = 0; i <= numHorizontalLines; i++) {
			    var _yy = i * gridSpacing;
			    draw_line(0, _yy, room_width, _yy);
			}

			// Draw vertical lines
			for (var j = 0; j <= numVerticalLines; j++) {
			    var _xx = j * gridSpacing;
			    draw_line(_xx, 0, _xx, room_height);
			}
		}
		// Reset
		draw_set_color(c_white);
		draw_set_alpha(1);
		#endregion GRID
	#endregion GAME
	
	#region LANGUAGE --- Press 2
	draw_text(20, 50, "LANG: " + global.lang); 	
	// Language Menu
	if (instance_exists(obj_lang_menu)) {
		draw_text(20, 80, "Menu pos: " + "(" + string(obj_lang_menu.x) + " / " + string(obj_lang_menu.y) + ")");
		draw_text(20, 120, "Phase: " + string(obj_lang_menu.phase));
		draw_text(20, 130, "Pressed Space: " + string(global.SPACE_CONFIRM));
		draw_text(20, 140, "Pressed Cancel: " + string(global.BACKSPACE_CANCEL));
		draw_text(20, 150,"Button Position: " + string(obj_lang_menu.pos_buttons));
		draw_text(20, 160, "Button Selected: " + string(obj_lang_menu.selected_button));
		draw_text(20, 170, "Hovering over CancelBTN: " + string(obj_lang_menu.cancelButtonIsHovering));
		draw_text(20, 180, "Hovering over ConfirmBTN: " + string(obj_lang_menu.confirmButtonIsHovering));
		// Checking boundaries for the lang menu based on variables
		draw_rectangle(obj_lang_menu.x, obj_lang_menu.y, obj_lang_menu.x + obj_lang_menu.width, obj_lang_menu.y + obj_lang_menu.height, true);
	}
	#endregion LANGUAGE
	
	#region CHARACTERS --- Press 3
	if (global.DEBUG) {
		if (instance_exists(obj_characters)) {
			draw_text(20, 60, "Current sprite: " + sprite_get_name(obj_characters.chara));
			draw_text(20, 70, "Current subimg: " + string(obj_characters.characterExpression));
		}
	}
	#endregion CHARACTERS
}

// Reset
draw_set_color(c_white);
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_alpha(1);