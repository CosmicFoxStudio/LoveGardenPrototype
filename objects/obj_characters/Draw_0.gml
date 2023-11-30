// Desenhar personagens

// Setar tamanho do sprite do personagem
if (global.DEBUG) {
	draw_text(100, 20, "Current sprite: " + sprite_get_name(chara));
	draw_text(100, 40, "Current subimg: " + string(characterExpression));
}

if (chara != noone) {
	draw_sprite_ext(
		chara, 
		characterExpression, 
		room_width/2, room_height, 
		1, 1, 0, 
		c_white, 1
	);
}
