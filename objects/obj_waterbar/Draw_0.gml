/// @description Update bar appearance
draw_sprite_stretched(
	spr_waterBar, 0, obj_waterbar.x, 
	obj_waterbar.y + (10-fillBar)*sprite_height/10, 
	sprite_width, 
	fillBar*sprite_height/10
);
