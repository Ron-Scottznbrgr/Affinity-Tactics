if (visible){
visible=false;
	global.target_type = (ds_grid_get(btn_Magic.char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,3));   ///Target Type;
	global.target_rotation=0;
	
switch (global.target_type){
case 1:	btn_Single_Hex.selected=true;
case 2:	btn_Double_Hex.selected=true;
case 3:	btn_Triple_Hex.selected=true;
case 4:	btn_Quad_Hex.selected=true;
break;
}
	
	obj_battle_spell_list_box.visible=false;
	obj_battle_cursor_right.visible=false;
	audio_play_sound(snd_menu_open,1,0);
	Battle_Fade_Hexes();
}