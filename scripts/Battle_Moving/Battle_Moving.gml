/// @desc Moving to Hex (id)
/// @arg id
var hex_ref;
var charID = ds_grid_get(global.turnOrder,3,0)
var old_tile_number;
	
	with(hex_tile)
	{
	if (id == argument0){
		occupied=true;
		hex_ref=self;
	}
		
	selectable=false;	
	}
	
	
	Battle_Fade_Hexes()
	btn_Move.selected=false;
	btn_Single_Hex.visible=true;
	btn_Double_Hex.visible=true;
	btn_Triple_Hex.visible=true;
	btn_Quad_Hex.visible=true;
	global.target_type=0;
	
	
	with(obj_char){
	if (id==charID){
	old_tile_number=char_tile_number;
		char_tile_x=hex_ref.array_x;
		char_tile_y=hex_ref.array_y;
		char_tile_number=hex_ref.id;
		x=hex_ref.x;
		y=hex_ref.y;
		char_has_moved=true;
	}
	}
	instance_destroy(obj_battle_cursor);
instance_create_layer(9000,9000, "GUI_Instances", obj_battle_cursor);
//instance_destroy(btn_Move);
	
	with (hex_tile)
	{
		if (id==old_tile_number)
		{
			//show_debug_message("Tile/Char IDs: "+string(id)+":::"+string(old_tile_number))
			occupied=false;
			selectable=false;
			false_cursor=false;
			the_cursor=false;
			false_selectable=false;
			mouse_hovering=false;
			in_range=false;
			image_index=0;
			//selectable=true;
		}
	}
	
	Battle_Check_End_Turn(1);
	/*
	btn_Move.character_trying_to_move.char_tile_x=array_x;
	btn_Move.character_trying_to_move.char_tile_y=array_y;
	btn_Move.character_trying_to_move.char_tile_number=id;
	btn_Move.character_trying_to_move.id;
	*/