/// @description Gets node based on room

roomName = room_get_name(room);

// Create chatterbox
	switch (roomName) {
		case "rm_quarto1":
			chatterbox = ChatterboxCreate("scenes/main_scene1_initial.yarn");
			ChatterboxJump(chatterbox, nodeName);             
			UpdateChatterbox();  
		break;
		
		case "rm_corredor1": 
			chatterbox = ChatterboxCreate("scenes/main_scene2_unicorridor.yarn");
			ChatterboxJump(chatterbox, nodeName);             
			UpdateChatterbox();  
		break;
		
		case "rm_corredor2": 
			chatterbox = ChatterboxCreate("scenes/main_scene3_unicorridor_afterclass.yarn");
			ChatterboxJump(chatterbox, nodeName);             
			UpdateChatterbox();  
		break;
		
		case "rm_pensamento": 
			chatterbox = ChatterboxCreate("scenes/main_scene4_mcthoughts.yarn");
			ChatterboxJump(chatterbox, nodeName);             
			UpdateChatterbox();  
		break;
		
		case "rm_parque": 
			chatterbox = ChatterboxCreate("scenes/main_scene5-1_ecopark.yarn");
			ChatterboxJump(chatterbox, nodeName);             
			UpdateChatterbox();  
		break;
		
		case "rm_quarto2":
			chatterbox = ChatterboxCreate("scenes/main_scene5-2_dormroom_afternoon.yarn");
			ChatterboxJump(chatterbox, nodeName);             
			UpdateChatterbox();  
		break;
		
		default: break;
	}
