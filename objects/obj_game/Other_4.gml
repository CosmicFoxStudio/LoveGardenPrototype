// Reset flags
if (room = rm_menu_test) {
	global.status.hidratacao = 10;
	global.status.humor = 0;
	global.status.nutricao = 0;
	global.status.badending = false;
	global.status.loveending = false;
	global.status.parque = false;
	global.status.quarto = false;

}

// Dialogue Files
if (global.debug) show_debug_message("All dialogue files: " + string(global.dialogueList));

for (var _file = 0; _file < array_length(global.dialogueList); _file++) {
	show_debug_message("Is " + string(global.dialogueList[_file]) + " loaded?: " + string(ChatterboxIsLoaded(global.dialogueList[_file])));
}
