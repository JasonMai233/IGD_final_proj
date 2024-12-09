current_page = 1;
show_tut = false;
showed = false;

prev_page = "<<< A";
next_page = "D >>>";
end_page = "press G to close tutorial";

center_x = display_get_gui_width()/2;
center_y = display_get_gui_height()/2;

function within_zone()
{
	return (x_zone[0] <= obj_avatar.x && x_zone[1] >= obj_avatar.x && y_zone[0] <= obj_avatar.y && y_zone[1] >= obj_avatar.y);
}

function draw_page_ui(txt1, txt2, txt3)
{
	draw_text(center_x - 400, center_y + 270, txt1);
	draw_text(center_x - string_width(txt2)/2, center_y + 270, txt2);	
	draw_text(center_x + 400 - string_width(txt3), center_y + 270, txt3);
}