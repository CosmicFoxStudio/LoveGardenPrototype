/// @description Desenhar caixa de seleção
image_xscale = 2.95;
draw_self();

if (global.DEBUG) {
	draw_text(
		20, 90, 
		"Selection box pos: " + "(" + string(x) + " / " + string(y) + ")"
	);
	draw_text(20, 100, "target_y: " + string(target_y));
}
