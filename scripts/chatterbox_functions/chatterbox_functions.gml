// Feather disable all

// Function to prevent repeating these lines
function chatterbox_update() {
	node = ChatterboxGetCurrent(chatterbox);
	text = ChatterboxGetContent(chatterbox, 0);
}

// Searches for the background layer and changes to it
function background_set_index(_arr) {
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	
	layer_background_index(back_id, _arr);
}

// Chatterbox function to change rooms
function next_room(_room) {
	//show_debug_message(_room);
	switch (_room) {
		case "corredor1": room_goto(rm_corredor1); break;
		case "corredor2": room_goto(rm_corredor2); break;
		case "pensamento": room_goto(rm_pensamento); break;
		case "parque": room_goto(rm_parque); break;
		case "quarto2": room_goto(rm_quarto2); break;
		case "menu": room_goto(rm_menu_test); break;
		default: break;
	}
}

// Function to choose character on screen
function characterOnScreen(_name) {
	var _sprite = noone;
	if (_name) == "ipe" {
		_sprite = spr_ipe;
	}
	else if (_name) == "mandacaru" {
		_sprite = spr_mandacaru;
	}
	else if (_name) == "mamba" {
		_sprite = spr_mamba;
	}
	else if (_name) == "vazio" {
		_sprite = spr_noone;
	}
	//else {
	//	_sprite = spr_noone;
	//}
	
	obj_characters.chara = _sprite;
}

// Function to choose the character's expression to be displayed (needs improvements!!)
function characterExpressionOnScreen(_num) {
	obj_characters.characterExpression = _num;
}

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
