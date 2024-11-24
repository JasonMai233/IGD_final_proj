depth = 30;
image_speed = 0;
image_index = brick_type;
if(flip_x)
	image_xscale = -1;

//I could just use spr_wall_base as a whole 160*160 sprite and the hitbox will work
//flawlessly, but since the instruction said we must build it in 32*32 brick, I made
//a seperation.