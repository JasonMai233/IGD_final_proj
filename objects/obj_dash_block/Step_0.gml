display_dir(dash_dir);

if(place_meeting(x,y,obj_avatar) && active){
	obj_avatar.dash(dash_dir, dash_dis);
}

if(active)
	sprite_index = spr_dash_block;
else
	sprite_index = spr_dash_block_inactive;
	