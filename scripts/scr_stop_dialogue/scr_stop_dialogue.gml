
function scr_stop_dialogue(){
	var obj = argument0;
	obj.dialogue_active = false;
	obj.current_dialogue = undefined;
	obj.text = "";
	obj.speaker = "";
	obj.displayed_text = "";
	obj.text_index = 0;
	room_goto(global.next);
	audio_stop_all();
	global.next = undefined;
}