/// @description Gets node based on room

sala = room_get_name(room);

// Create chatterbox
	switch (sala) {
		case "rm_quarto1":
			chatterbox = ChatterboxCreate("scenes/main_scene1_initial.yarn");
			ChatterboxJump(chatterbox, node);             
			chatterbox_update();  
		break;
		
		case "rm_corredor1": 
			chatterbox = ChatterboxCreate("scenes/main_scene2_unicorridor.yarn");
			ChatterboxJump(chatterbox, node);             
			chatterbox_update();  
		break;
		
		case "rm_corredor2": 
			chatterbox = ChatterboxCreate("scenes/main_scene3_unicorridor_afterclass.yarn");
			ChatterboxJump(chatterbox, node);             
			chatterbox_update();  
		break;
		
		case "rm_pensamento": 
			chatterbox = ChatterboxCreate("scenes/main_scene4_mcthoughts.yarn");
			ChatterboxJump(chatterbox, node);             
			chatterbox_update();  
		break;
		
		case "rm_parque": 
			chatterbox = ChatterboxCreate("scenes/main_scene5-1_ecopark.yarn");
			ChatterboxJump(chatterbox, node);             
			chatterbox_update();  
		break;
		
		case "rm_quarto2":
			chatterbox = ChatterboxCreate("scenes/main_scene5-2_dormroom_afternoon.yarn");
			ChatterboxJump(chatterbox, node);             
			chatterbox_update();  
		break;
		
		default: break;
	}
