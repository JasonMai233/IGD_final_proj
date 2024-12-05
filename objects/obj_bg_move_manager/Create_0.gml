npc_spawn_x = [-200, -200,1110,1370,2850, 2850];
npc_spawn_y = [1550,1810,-100,-100,1550, 1810];

function spawn_bg_npc()
{
	var can_spawn = irandom_range(0, 100);
	
	if (can_spawn == 0)
	{
		//show_debug_message("spawned bg npc");
		var spawn_loc = irandom_range(0,5);
		var npc = instance_create_layer(npc_spawn_x[spawn_loc], npc_spawn_y[spawn_loc], "instances", obj_bg_npc);
		npc.spd = random_range(1,5);
		switch(spawn_loc)
		{
			case 0:
				npc.path = [[DIR.E, 1320],[DIR.N,1650]];
			break;
			case 1:
				npc.path = [[DIR.E, 2900]];
			break;
			case 2:
				npc.path = [[DIR.S,1650],[DIR.W, 1320]];
			break;
			case 3:
				npc.path = [[DIR.S, 1650],[DIR.E,1450]];
			break;
			case 4:
				npc.path = [[DIR.W,1450],[DIR.N, 1600]];
			break;
			case 5:
				npc.path = [[DIR.W, 2900]];
			break;
		}
	}
}

car_spawn_cooldown = 0;
car_spawn_cd_max = 100;
car_spawn_x = [-100,1184,3000];
car_spawn_y = [1750,-100,1650];

function spawn_bg_car()
{
	var can_spawn = irandom_range(0, 100);
	
	if (can_spawn == 0)
	{
		//show_debug_message("spawned bg npc");
		var spawn_loc = irandom_range(0,2);
		var car = instance_create_layer(car_spawn_x[spawn_loc], car_spawn_y[spawn_loc], "instances", obj_bg_car);
		switch(spawn_loc)
		{
			case 0:
				car.path = [[DIR.E, 3000]];
			break;
			case 1:
				car.path = [[DIR.S, 1750],[DIR.W,1650]];
			break;
			case 2:
				car.path = [[DIR.W,1690],[DIR.N, 1320]];
			break;
		}
		car_spawn_cooldown = 0;
	}
}