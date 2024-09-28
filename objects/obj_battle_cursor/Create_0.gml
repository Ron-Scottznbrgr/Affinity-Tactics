jump=0;
target_x=0;
target_y=0;
x=9000;
y=9000;

var charID = ds_grid_get(global.turnOrder,3,0)
var hex_ID;	
	with (obj_char){
		
		//show_debug_message("other Char IDs:"+string(char_data[0]))	
		
	if (id == charID)
	{
		hex_ID=char_tile_number;
		}
	}
	with(hex_tile)
	{
	if (id==hex_ID)
	{
	obj_battle_cursor.target_y=y;
	obj_battle_cursor.target_x=x;
	//show_debug_message("FUCKING TILE X"+string(target_x))
	}
	}
			x=target_x;
		y=target_y;
	//show_debug_message("FUCKING CURSOR X"+string(x))




