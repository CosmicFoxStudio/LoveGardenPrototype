// funções auxiliares

// mantém _val entre _min e _max encapsulando de forma cíclica valores fora do range
function wrap(_val, _min, _max) {
	if _val > _max return _min;
	else if _val <_min return _max;
	else return _val;
}

// mantém mantém _val entre _min e _max
function wrapInside(_val, _min, _max) {
	if _val > _max return _max;
	else if _val <_min return _min;
	else return _val;
}

// desenha um retângulo a partir do centro, as cores são mudadas e depois resetadas
function draw_rectangle_center(_x, _y, _width, _height, _outline, _color, _alpha) {
	var _oldColor = draw_get_color();
	var _oldAlpha = draw_get_alpha();
	
	draw_set_color(_color);
	draw_set_alpha(_alpha);
	
	draw_rectangle(_x - _width/2, _y - _height/2, _x + _width/2, _y + _height/2, _outline);
	
	draw_set_color(_oldColor);
	draw_set_alpha(_oldAlpha);
}

// procura a layer do background e muda pro background certo
function background_set_index(_arr) {
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	
	layer_background_index(back_id, _arr[0]);
}

// função para evitar repetir essas linhas
function chatterbox_update() {
	node = ChatterboxGetCurrent(chatterbox);
	text = ChatterboxGetContent(chatterbox, 0);
}

// função que muda cena
function next_room(_sala) {
	//show_debug_message(_sala);
	switch (_sala[0]) {
		case "corredor1": room_goto(rm_corredor); break;
		case "corredor2": room_goto(rm_corredor2); break;
		case "pensamento": room_goto(rm_pensamento); break;
		case "parque": room_goto(rm_parque); break;
		case "quarto": room_goto(rm_quarto2); break;
		default: break;
	}
}

// função para escolher personagem na tela
function characterOnScreen(_num) {
	obj_characters.characterToDraw = _num[0];
}

function hidratacao() {
	return global.status.hidratacao;
}

function nutricao() {
	return global.status.nutricao;
}

function parque() {
	return global.status.parque;
}