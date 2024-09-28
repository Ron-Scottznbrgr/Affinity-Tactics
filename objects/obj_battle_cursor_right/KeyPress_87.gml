if (visible){


if (y> minY){
y-=28
cursor_spell_slot-=1;
//show_debug_message(y);
audio_play_sound(snd_cursor_move,1,0);
}
else 
{if (y==minY)
{
	y=maxY;
	cursor_spell_slot=obj_battle_spell_list_box.line_count-1;
	//show_debug_message(y);
audio_play_sound(snd_cursor_move,1,0);
}
}

//show_debug_message(cursor_spell_slot);

}