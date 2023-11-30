// Carregar arquivos
ChatterboxLoadFromFile("node1_initial.yarn");
ChatterboxLoadFromFile("node2_schoolcorridor_ype.yarn");
ChatterboxLoadFromFile("node3_schoolcorridorafter_ype.yarn");
ChatterboxLoadFromFile("node4_mcthoughts.yarn");
ChatterboxLoadFromFile("node5-1_ecopark.yarn");
ChatterboxLoadFromFile("node5-2_dormroom_ype.yarn");

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


/* Settando agora em Room Start
chatterbox = ChatterboxCreate("node1_initial.yarn");			// Criar chatterbox
ChatterboxJump(chatterbox, "NodeStart");						// Ir para a node inicial
chatterbox_update();												// Pegar node e texto atual
*/

depth = -100;
sala = "";
option_index = 0;                                

// Lógica para o mouse
option_hovered = -1; 



































