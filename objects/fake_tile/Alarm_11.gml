if (global.target_type == 0) {
	
	
}
else if (global.target_type > 0)
{
with ( instance_position( mouse_x, mouse_y, all ) )
        {
        hex_tile_id=id;
		show_debug_message((id));
        }
  
  if (global.target_type>1){
Battle_Targetting(hex_tile_id);
  }	
	
}
