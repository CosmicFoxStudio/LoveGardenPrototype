// Set draw properties
function f_draw_set(_color = c_white, _alpha = 1){
	draw_set_color(_color);
	draw_set_alpha(_alpha);
}

// Reset draw properties
function f_draw_reset() {
	draw_set(c_white, 1);
	draw_set_halign(-1);
	draw_set_valign(-1);
}

// Set alignment
function f_text_align(halign = fa_left, valign = fa_middle) {
	draw_set_halign(halign);
	draw_set_valign(valign);
}
