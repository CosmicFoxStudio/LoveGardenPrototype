// Carregar arquivos
/*
ChatterboxLoadFromFile("scenes/node1_initial.yarn");
ChatterboxLoadFromFile("scenes/node2_unicorridor_ype.yarn");
ChatterboxLoadFromFile("scenes/node3_unicorridorafter_ype.yarn");
ChatterboxLoadFromFile("scenes/node4_mcthoughts.yarn");
ChatterboxLoadFromFile("scenes/node5-1_ecopark.yarn");
ChatterboxLoadFromFile("scenes/node5-2_dormroom_ype.yarn");
*/

// Custom Chatterbox Functions 
ChatterboxAddFunction("bg", background_set_index);					// Add função para mudar background
ChatterboxAddFunction("nextRoom", next_room);						// Add função para mudar de cena
ChatterboxAddFunction("personagem", characterOnScreen);				// Add função para desenhar personagem
ChatterboxAddFunction("expressao", characterExpressionOnScreen);	// Add função para mudar a expressão do personagem
ChatterboxAddFunction("hidratacao", hidratacao);					// Add função que retorna hidratacao
ChatterboxAddFunction("nutricao", nutricao);						// Add função que retorna nutricao
ChatterboxAddFunction("parque", parque);							// Add função pra saber se vai pro parque
ChatterboxAddFunction("love", love);								// Love ending
ChatterboxAddFunction("bad", bad);									// Bad ending

node = "Start";
depth = -100;
sala = "";
option_index = 0;                                

// Lógica para o mouse
option_hovered = -1; 

#region Localization

// Get filename dynamically
function f_load_dialogue_files() {
	global.dialogueList = [];
	show_debug_message("Looking " + working_directory + "scenes\\" + "*.yarn");
	var _fileCounter = 0;
	var _fileName = file_find_first(working_directory + "scenes\\" + "*.yarn", fa_archive);
	show_debug_message("File found: " + string(_fileName));
	ChatterboxLoadFromFile("scenes/" + _fileName);
	array_push(global.dialogueList, "scenes\\" + _fileName);
	while (_fileName != "") {
		_fileName = file_find_next();
		if (_fileName == "") break;
		show_debug_message("File found: " + string(_fileName));
		ChatterboxLoadFromFile("scenes/" + _fileName);
		array_push(global.dialogueList, "scenes\\" + _fileName);
		_fileCounter += 1;
	}
	file_find_close();
}

f_load_dialogue_files();

// Only uncomment this next line when there are NEW dialogue lines to be generated!!
// (You will also need do disable sandboxing temporarily)
//ChatterboxLocalizationBuild(global.dialogueList, [("lang\\" + "en_dialogues.csv")]);

// Load localization
// If "English" was selected, load new dialogue lines
if (global.lang == "en") {
	ChatterboxLocalizationLoad("lang\\" + global.lang + "_dialogues.csv"); 
	show_debug_message("English translation loaded!");
}

#endregion Localization

/*
ChatterboxLoadFromFile("scenes/node1_initial.yarn");
ChatterboxLoadFromFile("scenes/node2_unicorridor_ype.yarn");
ChatterboxLoadFromFile("scenes/node3_unicorridorafter_ype.yarn");
ChatterboxLoadFromFile("scenes/node4_mcthoughts.yarn");
ChatterboxLoadFromFile("scenes/node5-1_ecopark.yarn");
ChatterboxLoadFromFile("scenes/node5-2_dormroom_ype.yarn");
*/

// UNUSED
//csvPath = working_directory + "lang\\";
//csvPathArray = [csvPath + "en_dialogues.csv"];
//var _yarnPath = filename_dir(GM_project_filename) + "\\datafiles\\scenes\\";
/*
global.dialogueList = [
	_yarnPath + "node1_initial.yarn",
	_yarnPath + "node2_unicorridor_ype.yarn",
	_yarnPath + "node3_unicorridorafter_ype.yarn",
	_yarnPath + "node4_mcthoughts.yarn",
	_yarnPath + "node5-1_ecopark.yarn",
	_yarnPath + "node5-2_dormroom_ype.yarn"
];
*/
