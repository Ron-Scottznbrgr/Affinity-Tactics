///@desc type text
OW_get_input();
var actionHold=keyboard_check(vk_space);

//check if need more chars
if (characters<message_length){
	
	characters+=message_speed+actionHold;
	
	//copy stringt o current character
	
message_draw = string_copy(message[message_current], 0, characters)

if (string_char_at(message[message_current], characters) == " " ||string_char_at(message[message_current], characters)=="")
{
	
}
else 
{
	audio_play_sound(snd_Text, 10, false);
}
// 

}
else{//once we finished adding characters to msg
	if (actionKey)
	{
		//check if more msgs
		if (message_current<message_end)
		{
		//start next msg 	
		message_current+=1;
		message_length = string_length(message[message_current]);
		characters=0;
		message_draw="";
		}
		else{
		//destroy obj
		instance_destroy();
			
		}
		
		
	}
	
	
}