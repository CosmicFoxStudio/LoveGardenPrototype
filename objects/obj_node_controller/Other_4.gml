/// @description 

sala = room_get_name(room);

// Criar chatterbox
	switch (sala) {
		case "rm_quarto1":
			chatterbox = ChatterboxCreate("scenes/node1_initial.yarn");
			ChatterboxJump(chatterbox, "Start");             
			chatterbox_update();  
		break;
		
		case "rm_corredor1": 
			chatterbox = ChatterboxCreate("scenes/node2_schoolcorridor_ype.yarn");
			ChatterboxJump(chatterbox, "Start");             
			chatterbox_update();  
		break;
		
		case "rm_corredor2": 
			chatterbox = ChatterboxCreate("scenes/node3_schoolcorridorafter_ype.yarn");
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
