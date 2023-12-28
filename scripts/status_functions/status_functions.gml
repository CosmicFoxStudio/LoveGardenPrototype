// Keeps _val between _min and _max cyclically encapsulating values outside the range
function Wrap(_val, _min, _max) {
	if _val > _max return _min;
	else if _val <_min return _max;
	else return _val;
}

// Keep _val between min and max
function WrapInside(_val, _min, _max) {
	if _val > _max return _max;
	else if _val <_min return _min;
	else return _val;
}

function GetHidratacao() {
	return global.status.hidratacao;
}

function GetNutricao() {
	return global.status.nutricao;
}

// Set specified flag to true
function SetFlag(_nome) {
	switch (_nome) {
		case "parque": global.status.parque = true; break;
		case "quarto": global.status.quarto = true; break;
		case "loveending": global.status.loveending = true; break;
		case "badending": global.status.badending = true; break;
	}
}

function GetPark() {
	return global.status.parque;
}

function GetLove() {
	return global.status.loveending;
}

function GetBad() {
	return global.status.badending;
}
