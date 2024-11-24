if (place_meeting (x,y,obj_avatar) && !stepped)
{
	button_activate();
}

if (!place_meeting (x,y,obj_avatar) && stepped)
{
	button_deactivate();
}



