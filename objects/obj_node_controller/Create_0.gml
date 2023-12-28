// Custom Chatterbox Functions 
ChatterboxAddFunction("bg", BackgroundSetIndex);					// Function to change background
ChatterboxAddFunction("nextRoom", NextRoom);						// Function to change scene
ChatterboxAddFunction("personagem", CharacterOnScreen);				// Function to draw character
ChatterboxAddFunction("expressao", CharacterExpressionOnScreen);	// Function to change character expression
ChatterboxAddFunction("hidratacao", GetHidratacao);					// Returns hidratacao status
ChatterboxAddFunction("nutricao", GetNutricao);						// Returns nutricao status
ChatterboxAddFunction("parque", GetPark);							// Returns park flag
ChatterboxAddFunction("love", GetLove);								// Love ending flag
ChatterboxAddFunction("bad", GetBad);								// Bad ending flag

node = "Start";
sala = "";
option_index = 0;                                
option_hovered = -1; 
depth = -100;
