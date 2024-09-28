/// @desc find_hex_grid (id)
/// @arg id

var tile_id=argument0;
var tile_id2=argument0-3;
tempArray[0]=tile_id;
tempArray[1]=tile_id2;
var loop_counter=0;
//show_message(tile_id)

/*
for (hex_x = 0; hex_x < 7; hex_x += 1){
	if ((hex_x ==1) || (hex_x == 3) || (hex_x==5)){
		hex_num_offset=4;
		}
	else{hex_num_offset=3;}
	
for (hex_y=0;hex_y<hex_num_offset;hex_y+=1)
{

//show_debug_message(string(id(hex_tile_array[1,1]))
*/

//if (tile_id==global.hex_tile_ids[loop_counter]){

//instance_destroy(tile_id);
//instance_destroy(tile_id-3);	
//for (tileNum = 0; tileNum < global.target_type; tileNum+=1)
//{

with (hex_tile){
if (id == tile_id||id==tile_id2){
event_perform_object(hex_tile,ev_keyboard, ord("V"));
tempID=id;
//show_debug_message(tempID)
}
}


//event_perform_object((tile_id-3),ev_destroy,0);
//}
//loop_counter++;


//var one_one = (hex_tile_array[1,1]).object_index;
///show_debug_message(DDD);
//if (tile_id==instance_id[hex_tile_array[hex_x,hex_y]]){

//}


//}
//}
////////////////////
/*
///// @desc find_hex_grid (id)
/// @arg id

var tile_id=argument0;
var loop_counter=0;
//show_message(tile_id)
for (hex_x = 0; hex_x < 7; hex_x += 1){
	if ((hex_x ==1) || (hex_x == 3) || (hex_x==5)){
		hex_num_offset=4;
		}
	else{hex_num_offset=3;}
	
for (hex_y=0;hex_y<hex_num_offset;hex_y+=1)
{

//show_debug_message(string(id(hex_tile_array[1,1]))

if (tile_id==global.hex_tile_ids[loop_counter]){
tempArray[0]=tile_id;
tempArray[1]=tile_id-3;


//instance_destroy(tile_id);
//instance_destroy(tile_id-3);	
//for (tileNum = 0; tileNum < global.target_type; tileNum+=1)
//{
//with (instance_id == tempArray[tileNum]) {
  
  //show_debug_message(tempArray[tileNum]);
    event_perform_object(object(tile_id), ev_destroy,0);
	show_debug_message("destroy?");
	//event_perform_object((tempArray[1]), ev_left_press,0);
  
//}
//}

   
   

}
loop_counter++;


//var one_one = (hex_tile_array[1,1]).object_index;
///show_debug_message(DDD);
//if (tile_id==instance_id[hex_tile_array[hex_x,hex_y]]){

//}


}
}
///////*/