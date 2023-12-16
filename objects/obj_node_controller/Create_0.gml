// Carregar arquivos
ChatterboxLoadFromFile("scenes/node1_initial.yarn");
ChatterboxLoadFromFile("scenes/node2_unicorridor_ype.yarn");
ChatterboxLoadFromFile("scenes/node3_unicorridorafter_ype.yarn");
ChatterboxLoadFromFile("scenes/node4_mcthoughts.yarn");
ChatterboxLoadFromFile("scenes/node5-1_ecopark.yarn");
ChatterboxLoadFromFile("scenes/node5-2_dormroom_ype.yarn");

// Custom Chatterbox Functions 
ChatterboxAddFunction("bg", background_set_index);						// Add função para mudar background
ChatterboxAddFunction("nextRoom", next_room);							// Add função para mudar de cena
ChatterboxAddFunction("personagem", characterOnScreen);				// Add função para desenhar personagem
ChatterboxAddFunction("expressao", characterExpressionOnScreen);		// Add função para mudar a expressão do personagem
ChatterboxAddFunction("hidratacao", hidratacao);							// Add função que retorna hidratacao
ChatterboxAddFunction("nutricao", nutricao);								// Add função que retorna nutricao
ChatterboxAddFunction("parque", parque);									// Add função pra saber se vai pro parque
ChatterboxAddFunction("love", love);											// Love ending
ChatterboxAddFunction("bad", bad);											// Bad ending

// Chatterbox Load Localization
loaded = false;

depth = -100;
sala = "";
option_index = 0;                                

// Lógica para o mouse
option_hovered = -1; 

// Localization
var _csvPath = filename_dir(GM_project_filename) + "\\datafiles\\lang\\";
csvPathArray = [_csvPath + "en_dialogues.csv"];

var _yarnPath = filename_dir(GM_project_filename) + "\\datafiles\\scenes\\";
yarnPathArray = [
	_yarnPath + "node1_initial.yarn",
	_yarnPath + "node2_unicorridor_ype.yarn",
	_yarnPath + "node3_unicorridorafter_ype.yarn",
	_yarnPath + "node4_mcthoughts.yarn",
	_yarnPath + "node5-1_ecopark.yarn",
	_yarnPath + "node5-2_dormroom_ype.yarn"
];

//ChatterboxLocalizationBuild(yarnPathArray, csvPathArray);