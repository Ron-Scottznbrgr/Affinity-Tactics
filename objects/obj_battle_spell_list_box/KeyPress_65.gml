if(!visible){
visible=true;

	global.target_type = 0;
	global.target_rotation=0;
	btn_Magic.spell_range=0;
	
	
	switch (global.target_type){
case 1:	btn_Single_Hex.selected=false;
case 2:	btn_Double_Hex.selected=false;
case 3:	btn_Triple_Hex.selected=false;
case 4:	btn_Quad_Hex.selected=false;
break;
}
	
	obj_battle_spell_list_box.visible=true;
	obj_battle_cursor_right.visible=true;
	audio_play_sound(snd_menu_cancel,1,0);
	Battle_Wipe_Hexes();
	Battle_Fade_Hexes();
}
else{
//Kill Menu
//OW_get_input();
//var actionHold=keyboard_check(vk_return);

//	if (actionHold)
	//{
		btn_Magic.selected=false;
		audio_play_sound(snd_menu_cancel,1,0);
		instance_destroy(obj_battle_cursor_right);
		instance_destroy();
}