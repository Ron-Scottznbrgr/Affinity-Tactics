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

if (global.target_type==99 && selectable==true && occupied == false)
{
	
	Battle_Moving(id);
	
}
else{

//show_debug_message(""+string(array_x)+" : "+string(array_y));
//show_debug_message(array_y);
//show_debug_message(id)
//show_debug_message("Distance: "+string(scr_Hex_Distances(global.hex_tile_array[0,0].array_x,global.hex_tile_array[0,0].array_y,array_x,array_y)))
//show_debug_message("Occupied? "+string(occupied)+".  Selectable? "+string(selectable))
//show_debug_message("__________________");
//show_debug_message((id));
event_perform(ev_alarm,2);
}