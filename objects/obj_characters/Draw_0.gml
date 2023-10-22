// Desenhar personagens

var _marginChar = 150;     // Horizontal character margin

// Setar tamanho do sprite do personagem
draw_sprite_ext(Plantas, 0, _marginChar,              room_height, 0.75, 0.75, 0, c_white, 1);
draw_sprite_ext(Plantas, 1, room_width - _marginChar, room_height, 0.75, 0.75, 0, c_white, 1);