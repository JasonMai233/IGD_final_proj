if(within_zone() && !showed)
{
	draw_set_font(font_UI);
	draw_text(center_x - string_width(hint)/2, center_y - 150, hint);
	if(keyboard_check_pressed(ord("G")))
	{
		showed = true;
		show_tut = true;
		//show_debug_message("showed tutorial");
	}
}
if(show_tut)
{
	draw_sprite(spr_tut_bg, 0, center_x, center_y);
	draw_sprite(tutorial_id[current_page-1][1], -1, center_x, center_y-100);
	draw_text_ext(center_x - 400, center_y + 20, tutorial_id[current_page-1][0],25,800);
	page_txt = "(" + string(current_page) + "/" + string(array_length(tutorial_id)) + ")";
	if (current_page == 1)
	{
		draw_page_ui("", page_txt, next_page)
	}
	else if (current_page == array_length(tutorial_id))
	{
		draw_page_ui(prev_page, page_txt, end_page)
	}
	else
	{
		draw_page_ui(prev_page, page_txt, next_page)
	}
	
	if(keyboard_check_pressed(ord("D")) && current_page != array_length(tutorial_id))
		current_page ++;
	if(keyboard_check_pressed(ord("A")) && current_page != 1)
		current_page --;
	if(keyboard_check_pressed(ord("G")) && current_page == array_length(tutorial_id))
	{
		show_tut = false;
		global.free_move = true;
	}
}