// Lang Menu 
width = 176;
height = 97;
option_padding_h = 86;
option_padding_v = 24;
option_margin = 48;

// Create Buttons
cancelButton = instance_create_layer(239, 264, "Instances", obj_lang_menu_btn); 
cancelButton.btnType = "CANCEL";
confirmButton = instance_create_layer(383, 264, "Instances", obj_lang_menu_btn);
confirmButton.btnType = "CONFIRM";

// Option selection
pos = 0;
phase = "SELECT";
cancelButtonIsHovering = false;
confirmButtonIsHovering = false;

// Last check selection
selected_button = "NONE"; // "CONFIRM" || "CANCEL" 
pos_buttons = 0;


// ENUMS USED: e_language & e_langMenuOptions

// Array of selectable languages
option[e_language.EN] = ["ENGLISH", "PORTUGUESE"];	// Button names in English
option[e_language.PT] = ["INGLÊS", "PORTUGUÊS"];	// Button names in Portuguese
//option[2] = ["Spanish", "Espanhol"];

// Other text
titleText[e_language.EN] = "Choose a language";
titleText[e_language.PT] = "Escolha a linguagem";

option_length = array_length(option);

/*	------------------- Selection Phase ------------------- 
	When the player is selecting between languages.

	-------------------- Confirm Phase -------------------- 
	When the cancel and confirm buttons are no longer 
	disabled and can be used either to confirm or cancel 
	the language selection.
*/
