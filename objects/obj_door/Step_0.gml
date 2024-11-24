if ((distance_to_object(obj_avatar) < tol_distance) && global.have_key)
{
	tol_distance = 1000;
	door_opening();
}