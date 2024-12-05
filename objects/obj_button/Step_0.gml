if (place_meeting (x,y,obj_avatar) && !stepped && obj_avatar.just_teleported)
{
	button_activate();
}

if (!place_meeting (x,y,obj_avatar) && stepped)
{
	button_deactivate();
}



