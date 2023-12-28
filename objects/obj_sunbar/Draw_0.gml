/// @description Update bar appearance
draw_sprite_stretched(
	spr_sunBar, 0, obj_sunbar.x, 
	obj_sunbar.y + (10-fillBar)*sprite_height/10, 
	sprite_width, 
	fillBar*sprite_height/10
);
