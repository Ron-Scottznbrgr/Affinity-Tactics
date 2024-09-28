if(selected&&object_exists(obj_battle_spell_list_box)&&obj_battle_spell_list_box.visible==false)
{
	spell_total_damage_dealt=0;
	spell_range	= ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,2);   ///Target Type;
	spell_element= ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,4);   ///Affinity Type;;
	spell_sub= ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,5);   ///Sub Type;;
	spell_power=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,1);   ///Sub Type;;
	spell_damage_type=1; // Direct Damage (For Now)
	spell_deals_damage=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,8);
	spell_causes_status=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,9);
	statuses[0,0]=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,10);
	statuses[0,1]=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,11);
	statuses[1,0]=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,12);
	statuses[1,1]=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,13);
	statuses[2,0]=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,14);
	statuses[2,1]=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,15);
	statuses[3,0]=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,16);
	statuses[3,1]=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,17);
	statuses[4,0]=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,18);
	statuses[4,1]=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,19);
	statuses[5,0]=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,20);
	statuses[5,1]=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,21);
	statuses[6,0]=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,22);
	statuses[6,1]=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,23);
	statuses[7,0]=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,24);
	statuses[7,1]=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,25);
	statuses[8,0]=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,26);
	statuses[8,1]=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,27);
	statuses[9,0]=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,28);
	statuses[9,1]=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,29);
	spell_drains_damage=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,30);
	spell_drain_percent=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,31);
	spell_heals=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,32);
	spell_heals_percent=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,33);
	spell_damages_percent=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,34);
	spell_damage_or_health_percent=ds_grid_get(char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,35);
	//casting_Char already established
	
	
	
	target_counter=0;
	with(hex_tile)
	{
	if (selectable)
	{
		btn_Magic.hex_array_X[btn_Magic.target_counter]=array_x;
		btn_Magic.hex_array_Y[btn_Magic.target_counter]=array_y;
		btn_Magic.target_counter++;
		btn_Magic.spell_fired=true;
		//show_debug_message("BooP")
	}
	}
	
	with (obj_char){
	for (var xx=0; xx<btn_Magic.target_counter;xx++)
	{
	//show_debug_message("CharX :"+string(char_tile_x)+"  Y  "+string(char_tile_y));
	//show_debug_message("Hex_X :"+string(btn_Magic.hex_array_X[xx])+"  Y  "+string(btn_Magic.hex_array_Y[xx]));
	if (char_tile_x==btn_Magic.hex_array_X[xx]&&char_tile_y==btn_Magic.hex_array_Y[xx])
	
	{
	//show_debug_message("\\\\\\\\\\\\///////////"+string(btn_Magic.casting_Char.char_data[0]))
	if (btn_Magic.spell_deals_damage==true)
	{
	Battle_Damage_Display(Spell_Damage_Calc(btn_Magic.casting_Char,self,btn_Magic.spell_element,btn_Magic.spell_sub,btn_Magic.spell_power,btn_Magic.spell_damage_type),(self.x - sprite_get_xoffset(sprite_index) + sprite_width / 2),self.y);
	btn_Magic.spell_total_damage_dealt+=Spell_Damage_Calc(btn_Magic.casting_Char,self,btn_Magic.spell_element,btn_Magic.spell_sub,btn_Magic.spell_power,btn_Magic.spell_damage_type);
	}
	
	if (btn_Magic.spell_damages_percent==true)
	{
	Battle_Damage_Display(Spell_Percent_Damage_Calc(btn_Magic.casting_Char,self,btn_Magic.spell_element,btn_Magic.spell_sub,btn_Magic.spell_power,btn_Magic.spell_damage_type),(self.x - sprite_get_xoffset(sprite_index) + sprite_width / 2),self.y);
	btn_Magic.spell_total_damage_dealt+=Spell_Percent_Damage_Calc(btn_Magic.casting_Char,self,btn_Magic.spell_element,btn_Magic.spell_sub,btn_Magic.spell_power,btn_Magic.spell_damage_type);
	}
	
	if (btn_Magic.spell_heals==true)
	{
		btn_Magic.text_delay=0;
		if (btn_Magic.spell_heals_percent==false)
		{
		Battle_Heal_Display(Spell_Heal_Calc(btn_Magic.casting_Char,self,btn_Magic.spell_element,btn_Magic.spell_sub,btn_Magic.spell_power,btn_Magic.spell_damage_type),(self.x - sprite_get_xoffset(sprite_index) + sprite_width / 2),self.y);
		}
		else
		{
			//Battle_Heal_Display
		}
		btn_Magic.text_delay=0.5;
	}
	
	
	
	
	if (btn_Magic.spell_causes_status==true)
	{
		//status calls
		for (var sCs=0; sCs<10;sCs++)
		{
			if (btn_Magic.statuses[sCs,0]>0)
			{
				show_debug_message("Status :"+string(sCs)+"   \\ ID: "+string(btn_Magic.statuses[sCs,0])+"    \\  %: "+string(btn_Magic.statuses[sCs,1]));
				randomize();
				var r_apply_status = irandom_range(0, 100);
				if (r_apply_status>= (100-btn_Magic.statuses[sCs,1]))
					{
					btn_Magic.text_delay+=2;
					show_debug_message(btn_Magic.text_delay)
					Battle_Status_Display(btn_Magic.statuses[sCs,0],(self.x - sprite_get_xoffset(sprite_index) + sprite_width / 2),self.y)
					show_debug_message("Status ID:"+string(btn_Magic.statuses[sCs,0])+" has succeffully applied @: "+string(r_apply_status));
					}
					else
					{
					show_debug_message("Status ID:"+string(btn_Magic.statuses[sCs,0])+" has FAILED @: "+string(r_apply_status));
					}
			}
		}
	}
	
	
	
	//instance_destroy() 	
	
	}
	}
	}
	
if (btn_Magic.spell_drains_damage==true)
	{
		if (btn_Magic.spell_total_damage_dealt>0)
		{
			btn_Magic.text_delay+=2;
		Battle_Heal_Display(round((btn_Magic.spell_total_damage_dealt*(btn_Magic.spell_drain_percent/100))), btn_Magic.casting_Char.x - sprite_get_xoffset(sprite_index) + sprite_width / 2,btn_Magic.casting_Char.y);
		show_debug_message("Total Damage: " + string(btn_Magic.spell_total_damage_dealt));
		show_debug_message("Total Drained: " + string(round(btn_Magic.spell_total_damage_dealt*(btn_Magic.spell_drain_percent/100))));
		}
	}

}

if (spell_fired&&selected)
{
	Battle_Wipe_Hexes()
	Battle_Fade_Hexes()
	target_counter=0;
	selected=false;
	global.target_type=0;
	global.target_rotation=0;
	spell_fired=0;
	spell_range=0;
	
	
	var charID = ds_grid_get(global.turnOrder,3,0)
	//show_debug_message("CharID:"+string(charID))
	with (obj_char){
		
		//show_debug_message("other Char IDs:"+string(char_data[0]))	
		
	if (id == charID)
	{
	char_has_acted=true;
	
	}
	}
	Battle_Wipe_Hexes()
	Battle_Fade_Hexes()
	instance_destroy(obj_battle_spell_list_box)
	instance_destroy(obj_battle_cursor_right)
	//instance_destory
	//instance_destroy()
	//instance_create_layer(100,260,"Instances",btn_Magic);*/
	
	
	
	
	Battle_Check_End_Turn(1);
	//instance_destroy(obj_battle_spell_list_box);
	//instance_destroy(obj_battle_cursor_right);
}
	
