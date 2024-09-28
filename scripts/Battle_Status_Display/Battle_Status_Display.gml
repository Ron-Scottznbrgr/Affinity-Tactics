/// @ Desc Takes Damage, x,y, creates Number Obj
/// @ arg Text to Display
/// @ arg Character X
/// @ arg Character Y
/// @ arg Delay

var status_notify = instance_create_layer(argument1,argument2,"GUI_Instances",obj_status_notifications);
//obj_status_notifications.text_timer=argument3;
switch(argument0){

case 1:
status_notify.status_text="Poison"
break;

case 888:
status_notify.status_text="Merk'd"
break;
}
audio_play_sound(snd_cursor_move, 10, false);//play on space not each char