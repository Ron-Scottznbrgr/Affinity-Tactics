//flashColor=c_red;
//RemoveColor=1;
mouse_hovering=false;
if ((global.target_type>0) && (global.target_type<98)){

//Battle_Fade_Hexes(hex_tile_id);

if (in_range==false){
Battle_Fade_Hexes();
}
}
else
{
	if (global.target_type==99){}
	else{
		event_perform(ev_alarm,0);
	}
}