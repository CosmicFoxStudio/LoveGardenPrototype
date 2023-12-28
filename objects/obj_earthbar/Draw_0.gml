/// @description Update bar appearance
draw_sprite_stretched(
	spr_earthBar, 0, 
	obj_earthbar.x, 
	obj_earthbar.y + (10-fillBar)*sprite_height/10, 
	sprite_width, 
	fillBar*sprite_height/10
);
