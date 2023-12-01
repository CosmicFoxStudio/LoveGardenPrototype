// Mover no menu
pos += f_checkVerticalInput();

// Wrap menu
if (pos >= option_length) pos = 0; // volta p/ pos 1
if pos < 0 pos = option_length - 1; // vai pra última pos

// Escolher uma opção de linguagem
if (global.SPACE_CONFIRM) {
	switch(pos) {
		case 0: 
			global.lang = "EN";
		break;
	
		case 1: 
			global.lang = "PT";
		break;
	}
}
