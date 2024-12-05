depth = -y;

dir = path[path_counter][0];

if(path[path_counter][1] <= dist_counter)
{
	if(path_counter+1 < array_length(path))
	{
		path_counter += 1;
		dist_counter = 0;
	}
	else
		image_alpha -= 0.02;
}

if(image_alpha <= 0 || (!in_room() && spawn_protection <= 0))
	instance_destroy();
	
if(spawn_protection > 0)
	spawn_protection --;

move();
