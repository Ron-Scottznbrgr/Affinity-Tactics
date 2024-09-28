if (selected==true && global.target_type==3){
	global.target_rotation+=1;
	if (global.target_rotation>5){global.target_rotation=0;}
	flashColor=c_yellow;
flashAlpha=1;
//Battle_Fade_Hexes(0);
with ( instance_position( mouse_x, mouse_y, hex_tile ) )
        {
			event_perform_object(hex_tile,ev_alarm,11);
			
		}
}
