/// @ desc Show Text
OW_get_input();
if (distance_to_object(obj_OW_Player)<8)&&(actionKey)&&(!instance_exists(obj_textbox))
{
var box = instance_create_depth(x,y,0,obj_textbox);	
for (var imsg = 0; imsg < array_length_1d(message); imsg++){
	box.message[imsg] = message[imsg];
}
box.message_end = array_length_1d(message)-1;
box.message_length=string_length(box.message[box.message_current]);
}