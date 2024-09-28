//flashColor=c_blue;
//if (ev_mouse_enter)
//{
//flashAlpha=1;
//}


/*with ( instance_position( mouse_x, mouse_y, all ) )
        {
        hex_tile_id=id;
		show_debug_message((id));
        }
  
  if (global.target_type>1){
Battle_Find_Hex(hex_tile_id);
  }*/
show_debug_message((id));
event_perform(ev_alarm,2);