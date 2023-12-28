Enums();
global.DEBUG = false;
global.lang = "en"; // "en", "pt"
SetLanguage();

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
global.PRESSED_LEFT = false;
global.PRESSED_RIGHT = false;

#region Chatterbox Load Files

if os_browser == browser_not_a_browser {
	// Not in browser - Load the files dynamically
	LoadDialogueFiles();
}
else {
	// In browser - load files manually
	ChatterboxLoadFromFile("scenes/main_scene1_initial.yarn");
	ChatterboxLoadFromFile("scenes/main_scene2_unicorridor.yarn");
	ChatterboxLoadFromFile("scenes/main_scene3_unicorridor_afterclass.yarn");
	ChatterboxLoadFromFile("scenes/main_scene4_mcthoughts.yarn");
	ChatterboxLoadFromFile("scenes/main_scene5-1_ecopark.yarn");
	ChatterboxLoadFromFile("scenes/main_scene5-2_dormroom_afternoon.yarn");
}

#endregion Chatterbox Load Files

#region Chatterbox Localization Build

// Only uncomment this next line when there are NEW dialogue lines to be generated!!
// (You will also need do disable sandboxing temporarily)
// ChatterboxLocalizationBuild(global.dialogueList, [("lang/" + "en_dialogues.csv")]);
// OBS: LoadLocalization() is set at rm_menu_test's creation code

#endregion Chatterbox Localization Build
