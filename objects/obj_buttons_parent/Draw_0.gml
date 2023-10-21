// o botao se desenhar
draw_self();

// desenhar a fonte
draw_set_font(fnt_pixel_teste);

// centralizar o a fonte
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// desenhar o texto
draw_text(x, y, button_text);

draw_set_halign(fa_left);
draw_set_valign(fa_top);






