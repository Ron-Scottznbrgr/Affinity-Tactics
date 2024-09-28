if (visible){

if (y<maxY){
y+=28;
cursor_spell_slot+=1;
//show_debug_message(y);
audio_play_sound(snd_cursor_move,1,0);

}else
{
if (y==maxY)
{
	y=minY;
	cursor_spell_slot=0;
	//show_debug_message(y);
audio_play_sound(snd_cursor_move,1,0);
}	
}


//show_debug_message(cursor_spell_slot);

}