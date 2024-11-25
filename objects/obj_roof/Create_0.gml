image_speed = 0;
image_index = brick_id;
change_frame = 30;

function within_zone()
{
	return (x_zone[0] <= obj_avatar.x && x_zone[1] >= obj_avatar.x && y_zone[0] <= obj_avatar.y && y_zone[1] >= obj_avatar.y);
}




