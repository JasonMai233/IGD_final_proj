depth = -y-100;

if(within_zone())
{
	if(image_alpha > 0)
		image_alpha -= 1/change_frame;
	else
		image_alpha = 0;
}
else
{
	if(image_alpha < 1)
		image_alpha += 1/change_frame;
	else
		image_alpha = 1;
}




