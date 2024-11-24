//default: index0
//stage1: gem gose into the door, index1-4
//stage2: door gose down, index 5-8
going_through_animation = false;
image_speed = 0;
stage_timer = 60;

stage1 = true;
stage2 = false;

tol_distance = 5;

function door_opening()
{
		show_debug_message(stage_timer);
		if(stage1 && stage_timer = 60) //begin stage 1
		{
			audio_play_sound(snd_door_1, 10, false);
			stage_timer--
		}	
		else if(stage_timer <= 0 && stage1)// stage 1 ended, start stage 2 and reset timer
		{
			stage1 = false;
			stage2 = true;
			stage_timer = 60;
		}
		else if(stage1) //going through stage 1
		{
			stage_timer--;
			image_speed = 1;
		}
		else if(stage2 && stage_timer = 60) //begin stage 2
		{
			audio_play_sound(snd_door_2, 10, false);
			obj_shade.image_speed = 1;
			stage_timer--
		}	
		else if(stage_timer <= 0 && stage2)// stage 2 ended, self destroy
		{
			global.door_exist = false;
			instance_destroy();
		}
		else if(stage2) //going through stage 1
		{
			stage_timer--;
		}
}
	

