/// @description 
if (global.DEBUG) show_debug_message("All dialogue files: " + string(global.dialogueList));
sala = room_get_name(room);

for (var _file = 0; _file < array_length(global.dialogueList); _file++) {
	show_debug_message("Is " + string(global.dialogueList[_file]) + " loaded?: " + string(ChatterboxIsLoaded(global.dialogueList[_file])));
}

// Criar chatterbox
	switch (sala) {
		case "rm_quarto1":
			chatterbox = ChatterboxCreate("scenes/node1_initial.yarn");
			ChatterboxJump(chatterbox, node);             
			chatterbox_update();  
		break;
		
		case "rm_corredor1": 
			chatterbox = ChatterboxCreate("scenes/node2_unicorridor_ype.yarn");
			ChatterboxJump(chatterbox, node);             
			chatterbox_update();  
		break;
		
		case "rm_corredor2": 
			chatterbox = ChatterboxCreate("scenes/node3_unicorridorafter_ype.yarn");
			ChatterboxJump(chatterbox, node);             
			chatterbox_update();  
		break;
		
		case "rm_pensamento": 
			chatterbox = ChatterboxCreate("scenes/node4_mcthoughts.yarn");
			ChatterboxJump(chatterbox, node);             
			chatterbox_update();  
		break;
		
		case "rm_parque": 
			chatterbox = ChatterboxCreate("scenes/node5-1_ecopark.yarn");
			ChatterboxJump(chatterbox, node);             
			chatterbox_update();  
		break;
		
		case "rm_quarto2":
			chatterbox = ChatterboxCreate("scenes/node5-2_dormroom_ype.yarn");
			ChatterboxJump(chatterbox, node);             
			chatterbox_update();  
		break;
		
		default: break;
	}
