if(!selected){
	btn_Single_Hex.visible=false;
	btn_Double_Hex.visible=false;
	btn_Triple_Hex.visible=false;
	btn_Quad_Hex.visible=false;
	
var character_trying_to_move;
	selected=true;
	global.target_type = 99;
	global.target_rotation=0;
	
	
	//Battle_Targetting();
	var charID = ds_grid_get(global.turnOrder,3,0)
	//show_debug_message("CharID:"+string(charID))
	with (obj_char){
		
		//show_debug_message("other Char IDs:"+string(char_data[0]))	
		
	if (id == charID)
	{
	
	
	//show_debug_message("Matched CharID of:"+string(charID)+" With: "+string(char_data[0]))	
	//show_debug_message("Character is on Tile: "+string(char_tile_x)+":"+string(char_tile_y))
	character_trying_to_move=self;
	break;
	}
//	show_debug_message("Not "+string(char_data[0]))
	}
//	show_debug_message("Character Selected = "+string(character_trying_to_move.char_data[0]))
	
	with (hex_tile)
	{
	if ((array_x==character_trying_to_move.char_tile_x)&&(array_y==character_trying_to_move.char_tile_y)){
		//show_debug_message("Moving From Hex id:"+string(id)+":   :"+string(array_x)+"/"+string(array_y))
		
		Battle_Targetting(id)
		break;
	}
	}
	
	
	//Battle_Targetting()
	
	
	
	
	
	
	
	
	
	}

else{
selected=false;
btn_Single_Hex.visible=true;
	btn_Double_Hex.visible=true;
	btn_Triple_Hex.visible=true;
	btn_Quad_Hex.visible=true;
global.target_type=0;
global.target_rotation=0;
//btn_Team_Select.selected=false;
Battle_Wipe_Hexes()
Battle_Fade_Hexes()
//global.target_rotation=0;
}