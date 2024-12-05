spawn_bg_npc();

if(car_spawn_cooldown < car_spawn_cd_max)
	car_spawn_cooldown++;
else
	spawn_bg_car();