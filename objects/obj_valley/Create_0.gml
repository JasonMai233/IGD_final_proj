depth = obj_avatar.depth +1;

image_speed = 0;

function up_adj()
{
	return (inst_up != noone);
}

function down_adj()
{
	return (inst_down != noone);
}

function left_adj()
{	
	return (inst_left != noone);
}

function right_adj()
{	
	return (inst_right != noone);
}

function auto_set_sprite()
{
		
	inst_up = instance_position(x, y-sprite_height, obj_valley);
	inst_down = instance_position(x, y+sprite_height, obj_valley);
	inst_left = instance_position(x-sprite_width, y, obj_valley);
	inst_right =instance_position(x+sprite_width, y, obj_valley);
	
	if(up_adj() && down_adj() && left_adj() && right_adj()) //cross shaped sprite
		spr_id = 4;
	else if (!left_adj() && !up_adj() && !right_adj()) //short "I" shaped sprite, not used yet but here for expandebility
		spr_id = 1;
	else if (!up_adj() && !right_adj() && !down_adj())
	{
		spr_id = 1;
		image_angle = 270;
	}
	else if (!right_adj() && !down_adj() && !left_adj())
	{
		spr_id = 1;
		image_angle = 180;
	}
	else if (!down_adj() && !left_adj() && !up_adj())
	{
		spr_id = 1;
		image_angle = 90;
	}
	else if (!up_adj() && !down_adj()) //long "I" shaped sprite
		spr_id = 2;
	else if (!left_adj() && !right_adj())
	{
		spr_id = 2;
		image_angle = 90;
	}
	else if (!up_adj() && !right_adj()) //"7" shaped sprite
		spr_id = 5;
	else if (!down_adj() && !right_adj())
	{
		spr_id = 5;
		image_angle = 270;
	}
	else if (!down_adj() && !left_adj())
	{
		spr_id = 5;
		image_angle = 180;
	}
	else if (!up_adj() && !left_adj())
	{
		spr_id = 5;
		image_angle = 90;
	}
	else if (!right_adj())// "T" shaped sprite
		spr_id = 3;
	else if (!up_adj())
	{
		spr_id = 3;
		image_angle = 90;
	}
	else if (!left_adj())
	{
		spr_id = 3;
		image_angle = 180;
	}
	else if (!down_adj())
	{
		spr_id = 3;
		image_angle = 270;
	}
	
	image_index = spr_id;
		
	//show_debug_message("valley spr set");
}			

auto_set_sprite();