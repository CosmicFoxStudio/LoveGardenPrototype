// Localization
function LoadLocalization() {
	// If "English" was selected, load new dialogue lines
	if (global.lang == "en") {
		ChatterboxLocalizationLoad("lang/" + global.lang + "_dialogues.csv"); 
		show_debug_message("English translation loaded!");
	}
}
