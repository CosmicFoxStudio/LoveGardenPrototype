/// @description 

// Number of options
var _count = ChatterboxGetOptionCount(chatterbox);

// Waiting for user input or waiting for the user to choose an option
if ChatterboxIsWaiting(chatterbox) {
    if (global.SPACE_CONFIRM || global.MOUSE_CONFIRM) {
		#region METADATA 
		var _once = false;
	    var _metadata = ChatterboxGetContentMetadata(chatterbox, 0);
		// If current line has metadata
		if (_once == false) {
		    if (array_length(_metadata) > 0) {
				// EXPRESSION - Index of the subimage (frame) of the character sprite
				if (_metadata[0] != "") {
					
					// There's some fixing to do regarding expressions (probably in here?)
					CharacterExpressionOnScreen(real(_metadata[0]));
					_once = true;
				}
				// HIDRATAÇÃO - Adds/removes points from the "hidratacao" status
		        if (_metadata[1] != "") { 
					global.status.hidratacao = wrapInside(obj_waterbar.fillBar + real(_metadata[1]), 0, 10); 
					obj_waterbar.fillBar = global.status.hidratacao; 
					_once = true;
				}
				// HUMOR - Add/remove points from the "humor" status
		        if (_metadata[2] != "") { 
					global.status.humor = wrapInside(obj_sunbar.fillBar + real(_metadata[2]), 0, 10); 
					obj_sunbar.fillBar = global.status.humor; 
					_once = true;
				}
				// NUTRIÇÃO - Add/remove points from "nutricao" status
		        if (_metadata[3] != "") { 
					global.status.nutricao = wrapInside(obj_earthbar.fillBar + real(_metadata[3]), 0, 10); 
					obj_earthbar.fillBar = global.status.nutricao; 
					_once = true;
				}
				// SOM - Enter the name of the sound asset
		        if (_metadata[4] != "" && _metadata[4] != "0") {
					audio_play_sound(asset_get_index(_metadata[4]), 10, false);
					_once = true;
				}
				// FLAG - Enter the name of the flag
		        if (_metadata[5] != "") {
					flag(_metadata[5]);
					_once = true;
				}
		    }
		}
		#endregion METADATA 

        ChatterboxContinue(chatterbox);
        chatterbox_update();
    }
	
// If there are options to choose
} else if _count {	
	// This variable needs to be restarted on loop start (or else make it local?)
	option_hovered = -1;
	
    // Mouse input
    for (var i = 0; i < _count; i++) {
        var _xx = room_width / 2;
        var _yy = (room_height / 6) * (i + 2) - 30;
        var _width = 450;
        var _height = 32;

        if (point_in_rectangle(mouse_x, mouse_y, _xx - _width / 2, _yy - _height / 2, _xx + _width / 2, _yy + _height / 2)) {
            option_hovered = i; // Records the option when hovering
			option_index = i; // Update option_index based on hovered option
			
			// Found a selected option, exits the loop
			break;
        }
		else {
			option_hovered = -1;	
		}
    }

	// Keyboard input
	var _key = CheckVerticalInput();
	repeat(1 + (ChatterboxGetOptionConditionBool(chatterbox, wrap(option_index + _key, 0, _count - 1)) == false)) {
		option_index = wrap(option_index + _key, 0, _count - 1);
	}
	
    // Option confirmation
    if  (global.SPACE_CONFIRM || (global.MOUSE_CONFIRM && option_hovered != -1)) {
        ChatterboxSelect(chatterbox, option_index);
        audio_play_sound(snd_option_beep, 0, false, 1, 0, random_range(0.8, 1.2));
		
        option_index = 0;
        chatterbox_update();
    }
}

// End of chatterbox
if ChatterboxIsStopped(chatterbox) {
    instance_destroy();
}
