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
