x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

view_height = camera_get_view_height(view_camera[0]);
view_width = camera_get_view_width(view_camera[0]);


zoom_spd = 1;

function zoom_out()
{
	if (view_width < 960)
	{
		view_height +=2
		view_width += 3
		camera_set_view_size(view_camera[0], view_width, view_height);
	}
}

function zoom_in()
{
	if (view_width > 720)
	{
		view_height -=2
		view_width -= 3
		camera_set_view_size(view_camera[0], view_width, view_height);
	}
}

function auto_zoom()
{
	if (obj_avatar.x >= 1100) //add more requirement here
		zoom_out();
	else
		zoom_in();
}
