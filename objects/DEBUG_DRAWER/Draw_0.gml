draw_set_color(c_white);
draw_set_alpha(1);
draw_set_font(fnt_dialogue);

if (global.DEBUG) {
	#region MOUSE
	draw_text(20, 10, "last_click_x: " + string(click_x));
	draw_text(20, 20, "last_click_y: " + string(click_y));
	draw_text(20, 30, "mouse pos: " + "(" + string(mouse_x) + " / " + string(mouse_y) + ")");
	draw_text(20, 40, "mouse GUI pos: " + "(" + string(click_GUI_x) + " / " + string(click_GUI_y) + ")");
	#endregion MOUSE
	
	#region LANGUAGE
	draw_text(20, 50, "LANG: " + global.lang); 	
	#endregion LANGUAGE
	
	#region CHARACTERS
	if (global.DEBUG) {
		if (instance_exists(obj_characters)) {
			draw_text(20, 60, "Current sprite: " + sprite_get_name(obj_characters.chara));
			draw_text(20, 70, "Current subimg: " + string(obj_characters.characterExpression));
		}
	}
	#endregion CHARACTERS
	
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

	#endregion GRID
}

// Reset
draw_set_color(c_white);
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_alpha(1);