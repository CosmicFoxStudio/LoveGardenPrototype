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

node = undefined;
text = "";
nodeName = "Start";
roomName = "";
optionIndex = 0;                                
optionHovered = -1; 
depth = -100;
