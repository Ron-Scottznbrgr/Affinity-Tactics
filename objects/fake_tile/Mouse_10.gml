/*
//if (ev_mouse_enter)
//{
//flashAlpha=1;

if (global.target_type == 0) {
	event_perform(ev_alarm,3);
	
}
else if (global.target_type > 0)
{
with ( instance_position( mouse_x, mouse_y, all ) )
        {
        hex_tile_id=id;
		
        }
  
  if (global.target_type>1){
Battle_Targetting(hex_tile_id);
  }
  else {event_perform(ev_alarm,1);}
	
}


//}

*/