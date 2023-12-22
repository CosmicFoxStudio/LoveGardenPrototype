width = 176;
height = 97;
option_padding_h = 86;
option_padding_v = 24;
option_margin = 48;

// Option selection
pos = 0;
confirmPhase = false; // maybe change to just "phase" and make it phase = "Select" or phase = "Confirm"?
cancelButtonIsHovering = false;
confirmButtonIsHovering = false;

// Last check selection
selected_button = "NONE"; // "CONFIRM" || "CANCEL" 
pos_buttons = 0;

enum e_lang_menu_options {
	DESCRIPTION,
	CONFIRM,
	CANCEL
}

// Array of selectable languages
option[e_language.EN] = ["English", "Portuguese"];	// Button names in English
option[e_language.PT] = ["Inglês", "Português"];	// Button names in Portuguese
//option[2] = ["Spanish", "Espanhol"];

// Other text
translatable_text[e_language.EN] = ["Choose a language", "CONFIRM", "CANCEL"];
translatable_text[e_language.PT] = ["Escolha a linguagem", "CONFIRMAR", "CANCELAR"];

option_length = array_length(option);
