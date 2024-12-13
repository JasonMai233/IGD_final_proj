spd = 1;
col_tolerance = 2;

is_moving = false;

image_speed = 0;
image_index = 0;
p_dir = noone; // current direction of player
just_teleported = false;
jt_timer = 0;

enum DIR {
	S,
	N,
	W,
	E,
	SW,
	SE,
	NW,
	NE
}// make the variable compass-based for easier understanding

function setSpr()
{
	switch (p_dir)
	{
		case DIR.N:
			sprite_index = spr_avatar_N;
		break;
		
		case DIR.S:
			sprite_index = spr_avatar_S;
		break;
		
		case DIR.W:
			sprite_index = spr_avatar_W;
		break;
		
		case DIR.E:
			sprite_index = spr_avatar_E;
		break;
		case DIR.NE:
			sprite_index = spr_avatar_NE;
		break;
		
		case DIR.NW:
			sprite_index = spr_avatar_NW;
		break;
		
		case DIR.SW:
			sprite_index = spr_avatar_SW;
		break;
		
		case DIR.SE:
			sprite_index = spr_avatar_SE;
		break;
		
	}
}
