// obj_dialogue Create Event
dialogue_queue = ds_queue_create();
current_dialogue = undefined;
text = "";
speaker = "";
text_index = 0;
text_speed = 0.5; // 控制文本显示速度
displayed_text = "";
dialogue_active = false;
character_sprite = undefined; //人物
player_avatar = false;

character_image_index = 0; // 当前帧
character_image_speed = 0.08; // 动画播放速度
