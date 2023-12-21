global.DEBUG = true;
global.lang = "en"; // "en", "pt"

enum e_language {
	EN,	// ---> 0
	PT	// ---> 1
}

global.status = {
	hidratacao: 10,
	humor: 0,
	nutricao: 0,
	badending: false,
	loveending: false,
	parque: false,
	quarto: false,
}

// Input
global.MOUSE_CONFIRM = false;
global.SPACE_CONFIRM = false;
global.BACKSPACE_CANCEL = false;
global.PRESSED_UP = false;
global.PRESSED_DOWN = false;

#region Chatterbox Load Files

// Get filename dynamically
function LoadDialogueFiles() {
	global.dialogueList = [];
	show_debug_message("Looking " + working_directory + "scenes/" + "*.yarn");
	var _fileCounter = 0;
	var _fileName = file_find_first(working_directory + "scenes/" + "*.yarn", fa_archive);
	show_debug_message("File found: " + string(_fileName));
	ChatterboxLoadFromFile("scenes/" + _fileName);
	array_push(global.dialogueList, "scenes/" + _fileName);
	while (_fileName != "") {
		_fileName = file_find_next();
		if (_fileName == "") break;
		show_debug_message("File found: " + string(_fileName));
		ChatterboxLoadFromFile("scenes/" + _fileName);
		array_push(global.dialogueList, "scenes/" + _fileName);
		_fileCounter += 1;
	}
	file_find_close();
}

LoadDialogueFiles();

#endregion Chatterbox Load Files

#region Chatterbox Localization Build

// Only uncomment this next line when there are NEW dialogue lines to be generated!!
// (You will also need do disable sandboxing temporarily)
// ChatterboxLocalizationBuild(global.dialogueList, [("lang/" + "en_dialogues.csv")]);

#endregion Chatterbox Localization Build
