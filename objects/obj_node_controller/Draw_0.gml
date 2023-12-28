/// @description Draw text and options

draw_set_font(fnt_dialogue);

// Set valign to the middle
DrawAlign(fa_left, fa_middle); 

// Horizontal text margin
var _marginText = 64;     

if IsChatterbox(chatterbox) and text != undefined {
	// Draw text
	var _yy = room_height - (_marginText/2) - 22;
	
	// Textbox (In case we need one made by code only)
	//draw_rectangle_center(room_width/2, _yy, room_width - 190, _marginText,  false, c_black, 0.5);
	
	DrawAlign(fa_center);
	var _xx = room_width/2 + 22;
	
	// Draw dialogue text
	draw_text(_xx, _yy, ChatterboxGetContentSpeech(chatterbox, 0));
	
	// Draw nametag
	draw_text(room_width/2 - 230, room_height - (_marginText/2) - 8, ChatterboxGetContentSpeaker(chatterbox, 0));
	
	// If there are options to choose, put them in the middle of the screen
	if ChatterboxGetOptionCount(chatterbox) {
		DrawAlign(fa_center);
		
		var _width = 450;
		var _height = 32;
		
		// Logic to always have 3 options (?)
		for (var i = 0; i < ChatterboxGetOptionCount(chatterbox); i++) {
			if ChatterboxGetOptionConditionBool(chatterbox, i) {
				_xx = room_width/2;
				_yy = (room_height/6) * (i+2) - 30;
				
				draw_rectangle_center(_xx, _yy, _width, _height, false, c_black, 0.5);
				
				var _icon = "";
				if (option_index == i) _icon = "> ";
				var _option = ChatterboxGetOption(chatterbox, i);
				
				draw_text(_xx, _yy, _icon + _option);
			}
		}
	}
}
		
// Reset
DrawReset();
