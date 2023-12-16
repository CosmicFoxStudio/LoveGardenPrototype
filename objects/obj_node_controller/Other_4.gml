/// @description 

sala = room_get_name(room);

/*
if (loaded == false) { 
	if (global.lang == "EN") {
		var _csvPath = filename_dir(GM_project_filename) + "\\datafiles\\lang\\";
		ChatterboxLocalizationLoad(_csvPath + "en_dialogues.csv"); 
		loaded = true;
	}
}
*/
	
// Criar chatterbox
	switch (sala) {
		case "rm_quarto1":
			chatterbox = ChatterboxCreate("scenes/node1_initial.yarn");
			ChatterboxJump(chatterbox, "Start");             
			chatterbox_update();  
		break;
		
		case "rm_corredor1": 
			chatterbox = ChatterboxCreate("scenes/node2_unicorridor_ype.yarn");
			ChatterboxJump(chatterbox, "Start");             
			chatterbox_update();  
		break;
		
		case "rm_corredor2": 
			chatterbox = ChatterboxCreate("scenes/node3_unicorridorafter_ype.yarn");
			ChatterboxJump(chatterbox, "Start");             
			chatterbox_update();  
		break;
		
		case "rm_pensamento": 
			chatterbox = ChatterboxCreate("scenes/node4_mcthoughts.yarn");
			ChatterboxJump(chatterbox, "Start");             
			chatterbox_update();  
		break;
		
		case "rm_parque": 
			chatterbox = ChatterboxCreate("scenes/node5-1_ecopark.yarn");
			ChatterboxJump(chatterbox, "Start");             
			chatterbox_update();  
		break;
		
		case "rm_quarto2":
			chatterbox = ChatterboxCreate("scenes/node5-2_dormroom_ype.yarn");
			ChatterboxJump(chatterbox, "Start");             
			chatterbox_update();  
		break;
		
		default: break;
	}
