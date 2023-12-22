// Function to handle button text color
/// @param buttonType Type of the button ("CANCEL" or "CONFIRM")
function ButtonColor(_buttonType) {
	var textColorDefault = c_white;
	var textColorHovered = c_yellow;
    if (!unavailable) {
        if ((obj_lang_menu.pos_buttons == 1 && _buttonType == "CONFIRM") ||
            (obj_lang_menu.pos_buttons == 0 && _buttonType == "CANCEL")) {
            if (hovering) {
                return textColorHovered;
            }
        } else {
            return textColorDefault;
        }
    }
    return textColorDefault;
}
