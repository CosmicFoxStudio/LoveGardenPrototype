draw_self();

// Draw with font
draw_set_font(fnt_menu);

// Set alignment to middle center
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw the text
if (global.lang == "en") {
	draw_text(x, y, button_text[0]);
}
else if (global.lang == "pt") {
	draw_text(x, y, button_text[1]);
}

draw_set_halign(-1);
draw_set_valign(-1);
