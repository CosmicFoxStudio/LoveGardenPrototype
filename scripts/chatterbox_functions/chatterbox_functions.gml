// Feather disable all

// Function to prevent repeating these lines
function UpdateChatterbox() {
	node = ChatterboxGetCurrent(chatterbox);
	text = ChatterboxGetContent(chatterbox, 0);
}

// Searches for the background layer and changes to it
function BackgroundSetIndex(_arr) {
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	
	layer_background_index(back_id, _arr);
}

// Chatterbox function to change rooms
function NextRoom(_room) {
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
function CharacterOnScreen(_name) {
	var sprite = noone;
	if (_name) == "ipe" {
		sprite = spr_ipe;
	}
	else if (_name) == "mandacaru" {
		sprite = spr_mandacaru;
	}
	else if (_name) == "mamba" {
		sprite = spr_mamba;
	}
	else if (_name) == "vazio" {
		sprite = spr_noone;
	}
	//else {
	//	sprite = spr_noone;
	//}
	
	obj_characters.chara = sprite;
}

// Function to choose the character's expression to be displayed (needs improvements!!)
function CharacterExpressionOnScreen(_num) {
	obj_characters.characterExpression = _num;
}

// Get filename dynamically
function LoadDialogueFiles() {
	global.dialogueList = [];
	show_debug_message("Looking " + working_directory + "scenes/" + "*.yarn");
	var fileCounter = 0;
	var fileName = file_find_first(working_directory + "scenes/" + "*.yarn", fa_archive);
	show_debug_message("File found: " + string(fileName));
	ChatterboxLoadFromFile("scenes/" + fileName);
	array_push(global.dialogueList, "scenes/" + fileName);
	while (fileName != "") {
		fileName = file_find_next();
		if (fileName == "") break;
		show_debug_message("File found: " + string(fileName));
		ChatterboxLoadFromFile("scenes/" + fileName);
		array_push(global.dialogueList, "scenes/" + fileName);
		fileCounter += 1;
	}
	file_find_close();
}
