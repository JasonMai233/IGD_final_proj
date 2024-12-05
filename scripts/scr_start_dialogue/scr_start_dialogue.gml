function scr_start_dialogue(){


var obj = argument0;
var _text = argument1;
var _speaker = argument2;
 var _character = argument3;

var dialogue = {text: _text, speaker: _speaker,character: _character};
ds_queue_enqueue(obj.dialogue_queue, dialogue);

if (!obj.dialogue_active) {		
    scr_show_next_dialogue(obj);
}

}