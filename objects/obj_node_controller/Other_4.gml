/// @description 

sala = room_get_name(room);

// Criar chatterbox
	switch (sala) {
		case "rm_quarto1":
			chatterbox = ChatterboxCreate("node1_initial.yarn");
			ChatterboxJump(chatterbox, "NodeStart");             
			chatterbox_update();  
		break;
		
		case "rm_corredor1": 
			chatterbox = ChatterboxCreate("node2_schoolcorridor_ype.yarn");
			ChatterboxJump(chatterbox, "NodeStart");             
			chatterbox_update();  
		break;
		
		case "rm_corredor2": 
			chatterbox = ChatterboxCreate("node3_schoolcorridorafter_ype.yarn");
			ChatterboxJump(chatterbox, "NodeStart");             
			chatterbox_update();  
		break;
		
		case "rm_pensamento": 
			chatterbox = ChatterboxCreate("node4_mcthoughts.yarn");
			ChatterboxJump(chatterbox, "NodeStart");             
			chatterbox_update();  
		break;
		
		case "rm_parque": 
			chatterbox = ChatterboxCreate("node5-1_ecopark.yarn");
			ChatterboxJump(chatterbox, "NodeStart");             
			chatterbox_update();  
		break;
		
		case "rm_quarto2":
			chatterbox = ChatterboxCreate("node5-2_dormroom_ype.yarn");
			ChatterboxJump(chatterbox, "NodeStart");             
			chatterbox_update();  
		break;
		
		default: break;
	}


































