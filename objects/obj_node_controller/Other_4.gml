/// @description 

// Criar chatterbox
	switch (_sala[0]) {
		case "quarto1":
			chatterbox = ChatterboxCreate("node1_initial.yarn");
			ChatterboxJump(chatterbox, "NodeStart");             
			chatterbox_update();  
		break;
		
		case "corredor1": 
			chatterbox = ChatterboxCreate("node2_schoolcorridor_ype.yarn");
			ChatterboxJump(chatterbox, "NodeStart");             
			chatterbox_update();  
		break;
		
		case "corredor2": 
			chatterbox = ChatterboxCreate("node3_schoolcorridorafter_ype.yarn");
			ChatterboxJump(chatterbox, "NodeStart");             
			chatterbox_update();  
		break;
		
		case "pensamento": 
			chatterbox = ChatterboxCreate("node4_mcthoughts.yarn");
			ChatterboxJump(chatterbox, "NodeStart");             
			chatterbox_update();  
		break;
		
		case "parque": 
			chatterbox = ChatterboxCreate("node5-1_ecopark.yarn");
			ChatterboxJump(chatterbox, "NodeStart");             
			chatterbox_update();  
		break;
		
		case "quarto2":
			chatterbox = ChatterboxCreate("node5-2_dormroom_ype.yarn");
			ChatterboxJump(chatterbox, "NodeStart");             
			chatterbox_update();  
		break;
		
		default: break;
	}


































