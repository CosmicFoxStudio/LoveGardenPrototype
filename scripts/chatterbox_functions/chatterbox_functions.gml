// Feather disable all

// Funções Auxiliares

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
	
	layer_background_index(back_id, _arr);
}

// função para evitar repetir essas linhas
function chatterbox_update() {
	node = ChatterboxGetCurrent(chatterbox);
	text = ChatterboxGetContent(chatterbox, 0);
}

// função que muda cena
function next_room(_sala) {
	//show_debug_message(_sala);
	switch (_sala) {
		case "corredor1": room_goto(rm_corredor1); break;
		case "corredor2": room_goto(rm_corredor2); break;
		case "pensamento": room_goto(rm_pensamento); break;
		case "parque": room_goto(rm_parque); break;
		case "quarto2": room_goto(rm_quarto2); break;
		case "menu": room_goto(rm_menu_test); break;
		default: break;
	}
}

// função para escolher personagem na tela
function characterOnScreen(_name) {
	var _sprite = noone;
	if (_name) == "ipe" {
		_sprite = spr_ipe;
	}
	else if (_name) == "mandacaru" {
		_sprite = spr_mandacaru;
	}
	else if (_name) == "mamba" {
		_sprite = spr_mamba;
	}
	else if (_name) == "vazio" {
		_sprite = spr_noone;
	}
	//else {
	//	_sprite = spr_noone;
	//}
	
	obj_characters.chara = _sprite;
}

// função para escolher a expressão do personagem na tela
function characterExpressionOnScreen(_num) {
	obj_characters.characterExpression = _num;
}

// getHidratacao
function hidratacao() {
	return global.status.hidratacao;
}

// getNutricao
function nutricao() {
	return global.status.nutricao;
}

function flag(_nome) {
	switch (_nome) {
		case "parque": global.status.parque = true; break;
		case "quarto": global.status.quarto = true; break;
		case "loveending": global.status.loveending = true; break;
		case "badending": global.status.badending = true; break;
	}
}

function parque() {
	return global.status.parque;
}

function love() {
	return global.status.loveending;
}

function bad() {
	return global.status.badending;
}