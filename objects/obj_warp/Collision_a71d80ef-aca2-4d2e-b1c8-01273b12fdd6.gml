/// @desc Fadeout to next room
if (active==0){
	if (preserve_x == true)
	{
		xx=obj_OW_Player.x-2;
		show_debug_message("Preserving X");
		}
	if (preserve_y == true)
	{
		yy=obj_OW_Player.y-2;
		show_debug_message("Preserving Y");
		}
	
	room_fadeout(target,c_black,0.05,xx,yy);
	active=1;
}