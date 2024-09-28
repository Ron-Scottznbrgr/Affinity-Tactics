///desc Checks to see if turn should end.
///args End ID

/////Ending IDs
//1 is character has acted or moved.

if (argument0==1){
var charID = ds_grid_get(global.turnOrder,3,0)
with(obj_char){
	if (id==charID){
		if (char_has_acted==true && char_has_moved==true)
		{
		char_has_acted=false;
		char_has_moved=false;
		global.endTurn=true;	
		show_debug_message("BATTLE TURN HAS ENDED");
		}
	}
}
}

if (global.endTurn==true)
{
	Battle_Wipe_Hexes()
	Battle_Fade_Hexes()
Battle_End_Turn()	
}