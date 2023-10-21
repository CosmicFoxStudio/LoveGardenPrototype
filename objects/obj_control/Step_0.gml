// Navegar no texto e nas opções

var _count = ChatterboxGetOptionCount(chatterbox); // número de opções

// Esperando por user input ou esperando pela escolha da opção
if ChatterboxIsWaiting(chatterbox) and keyboard_check_pressed(vk_space) {
	ChatterboxContinue(chatterbox);
	chatterbox_update();
} else if _count {
	var _key = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	
	// Mover option_index
	// Mover 2 vezes se a próxima opção é inválida
	
	repeat(1 + (ChatterboxGetOptionConditionBool(chatterbox, wrap(option_index + _key, 0, _count - 1)) == false)) {
		option_index = wrap(option_index + _key, 0, _count - 1);
	}
	
	if keyboard_check_pressed(vk_space) {
		ChatterboxSelect(chatterbox, option_index);
		option_index = 0;
		chatterbox_update();
	}
}

// Chegou no fim do chatterbox
if ChatterboxIsStopped(chatterbox) {
	instance_destroy();
}