/// @desc find_hex_grid (id)
/// @arg id

var tile_id=argument0;
var tile_id2=argument0;

var tile_x=0;
var tile_y=0;
tempArray[0]=tile_id;
tempArray[1]=tile_id2;
var loop_counter=0;




if (global.target_type==2){
	
	//loop_counter = global.hex_tile_ids[0];
	
	//Down Left
if (global.target_rotation==0)
{
if (tile_id ==global.hex_tile_ids[6]||tile_id==global.hex_tile_ids[13]||tile_id==global.hex_tile_ids[20])
{
	tile_id2=0;
}
else{
	
	tile_id2=argument0-3;
	if (tile_id2<global.hex_tile_ids[0]||tile_id>global.hex_tile_ids[23]){
	tile_id2=0;	
	}
}
}

//Up Left
else if (global.target_rotation==1)
{
	if (tile_id ==global.hex_tile_ids[3]||tile_id==global.hex_tile_ids[10]||tile_id==global.hex_tile_ids[17])
{
	tile_id2=0;
}
else{
tile_id2=argument0-4;
if (tile_id2<global.hex_tile_ids[0]||tile_id>global.hex_tile_ids[23]){
	tile_id2=0;	
	}
}
}


//Up UP
else if (global.target_rotation==2)
{
	if (tile_id ==global.hex_tile_ids[0]||tile_id==global.hex_tile_ids[3]||tile_id==global.hex_tile_ids[7]||tile_id ==global.hex_tile_ids[10]||tile_id==global.hex_tile_ids[14]||tile_id==global.hex_tile_ids[17]||tile_id==global.hex_tile_ids[21])
{
	tile_id2=0;
}
else{
tile_id2=argument0-1;
if (tile_id2<global.hex_tile_ids[0]||tile_id>global.hex_tile_ids[23]){
	tile_id2=0;	
	}
}
}


//Up Right
else if (global.target_rotation==3)
{
	if (tile_id ==global.hex_tile_ids[3] ||tile_id==global.hex_tile_ids[10]||tile_id==global.hex_tile_ids[17])
{
	tile_id2=0;
}
else{
tile_id2=argument0+3;
if (tile_id2<global.hex_tile_ids[0]||tile_id>global.hex_tile_ids[23]){
	tile_id2=0;	
	}
}
}


//Down Right
else if (global.target_rotation==4)
{
	if (tile_id ==global.hex_tile_ids[6]||tile_id==global.hex_tile_ids[13]||tile_id==global.hex_tile_ids[20])
{
	tile_id2=0;
}
else{
tile_id2=argument0+4;
if (tile_id2<global.hex_tile_ids[0]||tile_id>global.hex_tile_ids[23]){
	tile_id2=0;	
	}
}
}



//Down Down
else if (global.target_rotation==5)
{
	if (tile_id ==global.hex_tile_ids[2]||tile_id==global.hex_tile_ids[6]||tile_id==global.hex_tile_ids[9]||tile_id ==global.hex_tile_ids[13]||tile_id==global.hex_tile_ids[16]||tile_id==global.hex_tile_ids[20])
{
	tile_id2=0;
}
else{
tile_id2=argument0+1;
if (tile_id2<global.hex_tile_ids[0]||tile_id>global.hex_tile_ids[23]){
	tile_id2=0;	
	}
}
}

/*//Tops
if (global.target_rotation == 1||global.target_rotation==2){
if (tile_id ==100065||tile_id==100072||tile_id==100079)
{
	tile_id2=0;
	//show_debug_message("SUCCESS");
}
}


//Bottoms
if (global.target_rotation == 0||global.target_rotation==3){
if (tile_id ==100068||tile_id==100075||tile_id==100082)
{
	tile_id2=0;
	//show_debug_message("SUCCESS");
}
}*/


with (hex_tile){
if (id == tile_id){
	//tile_x=hex_tile.array_x;
	//tile_x=hex_tile.array_y;
	event_perform_object(hex_tile,ev_alarm, 1);
}


else if(id==tile_id2){
	event_perform_object(hex_tile,ev_alarm, 2);
}

//tempID=id;
//show_debug_message(tempID)
}
}


