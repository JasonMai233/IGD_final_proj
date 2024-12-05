image_speed = 0;
stepped = false;
tol = 32;

function button_activate()
{
	show_debug_message("activate");
	dash_change();
	stepped = true;
	image_index = 1;
	
}

function button_deactivate()
{
	show_debug_message("deactivate");
	stepped = false;
	image_index = 0;
}

function instance_swap(inst1, inst2)
{
	if(inst1.active)
	{
		inst1.active = false;
		inst2.active = true;
	}
	else if (inst2.active)
	{
		inst2.active = false;
		inst1.active = true;
	}
}

function dash_change() 
{
	with(obj_dash_block)
	{
		if(changeable)
		{
			if (active)
				active = false;	
			else if (!active)
				active = true;
		}
	}
}
//function dash_change() // old function
//{
	//inst_up = instance_position(x, y-tol, obj_dash_block);
	//inst_down = instance_position(x, y+tol, obj_dash_block);
	//inst_left = instance_position(x-tol, y, obj_dash_block);
	//inst_right =instance_position(x+tol, y, obj_dash_block);
	
	//instance_swap(inst_up, inst_down);
	//instance_swap(inst_left, inst_right);
//}

depth = obj_avatar.depth +1;

