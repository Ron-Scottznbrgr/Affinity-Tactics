///@desc textboxes
///@args messeges
var box = instance_create_depth(x,y,0,obj_textbox)


for (var imsg=0; imsg<argument_count; imsg++)
{
	box.message[imsg]=argument[imsg];
}

box.message_end=argument_count-1;
box.message_length=string_length(box.message[box.message_current])

