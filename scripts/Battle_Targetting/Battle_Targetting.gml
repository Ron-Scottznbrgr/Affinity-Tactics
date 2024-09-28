/// @desc find_hex_grid (id)
/// @arg id

var tile_id=argument0;
var tile_x=[];
var tile_y=[];

var tiles=[];
var range_tiles=[];

var skip=false;

var master_fake;

	var character_origin_x;
	var character_origin_y;
	
if (global.target_type<99){
var charID = ds_grid_get(global.turnOrder,3,0)

with (obj_char){
		
		//show_debug_message("other Char IDs:"+string(char_data[0]))	
		
	if (id == charID)
	{
		character_origin_x=char_tile_x;
		character_origin_y=char_tile_y;
//show_debug_message("X of Spellcaster:  "+string(character_origin_x)+"Y:   "+string(character_origin_y))
		}
	}
	
}





////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
Battle_Wipe_Hexes()
if (global.target_type<99)////////Targetting with Spells or Teleport.//
{	
	
	
var distance=btn_Magic.spell_range;
//show_debug_message("DISTANCE="+string(distance))
range_tiles=scr_Find_x_steps_phase(character_origin_x,character_origin_y,distance)
for (var range_setter=0;range_setter<array_length_1d(range_tiles);range_setter+=1)
{
range_tiles[range_setter].in_range=true;
}
}

/////////////////////////////////////////////////////////////////////
//show_debug_message(argument0);

//show_debug_message(tile_id);


with (hex_tile){
	
if (id == tile_id){

	tile_x[0]=array_x;
	tile_y[0]=array_y;
	
	//tiles[0]=hex_tile;
	
tiles[0]=global.hex_tile_array[tile_x[0],tile_y[0]];	
}
}

if (tiles[0].in_range==true)
{
	//show_debug_message("Selection in Range...")
}
else
{
	skip=true;
}






//if (skip==false){


with (fake_tile){
	master_fake=fake_tile;
}


if (global.target_type==1){

}


if (global.target_type==2){
	
//Down Left
//Up Left
//Up UP
//Up Right
//Down Right
//Down Down

if (global.target_rotation==0)
{
tile_x[1]=tile_x[0]-1;//		[target]	
tile_y[1]=tile_y[0]-1;//	[tile1]
}
else if (global.target_rotation==1)
{
tile_x[1]=tile_x[0]-1;//	[tile1]
tile_y[1]=tile_y[0]-0;//		[target]
}
else if (global.target_rotation==2)
{
tile_x[1]=tile_x[0]+0;//	[tile1]
tile_y[1]=tile_y[0]+1;//	[target]
}
else if (global.target_rotation==3)
{
tile_x[1]=tile_x[0]+1;//		[tile1]
tile_y[1]=tile_y[0]+1;//	[target]
}
else if (global.target_rotation==4)
{
tile_x[1]=tile_x[0]+1;//	[target]
tile_y[1]=tile_y[0]+0;//		[tile1]
}
else if (global.target_rotation==5)
{
tile_x[1]=tile_x[0]-0;//	[target]
tile_y[1]=tile_y[0]-1;//	[tile1]
}
}



if (global.target_type==3){

if (global.target_rotation==0)
{
tile_x[1]=tile_x[0]+1;
tile_y[1]=tile_y[0]+1;
tile_x[2]=tile_x[0]+1;
tile_y[2]=tile_y[0]-0;
}
else if (global.target_rotation==1)
{
tile_x[1]=tile_x[0]-0;
tile_y[1]=tile_y[0]-1;
tile_x[2]=tile_x[0]+1;
tile_y[2]=tile_y[0]-0;
}
else if (global.target_rotation==2)
{
tile_x[1]=tile_x[0]-1;
tile_y[1]=tile_y[0]-1;
tile_x[2]=tile_x[0]-0;
tile_y[2]=tile_y[0]-1;
}
else if (global.target_rotation==3)
{
tile_x[1]=tile_x[0]-1;
tile_y[1]=tile_y[0]-0;
tile_x[2]=tile_x[0]-1;
tile_y[2]=tile_y[0]-1;
}
else if (global.target_rotation==4)
{
tile_x[1]=tile_x[0]-0;
tile_y[1]=tile_y[0]+1;
tile_x[2]=tile_x[0]-1;
tile_y[2]=tile_y[0]-0;
}

else if (global.target_rotation==5)
{
tile_x[1]=tile_x[0]+1;
tile_y[1]=tile_y[0]+1;
tile_x[2]=tile_x[0]-0;
tile_y[2]=tile_y[0]+1;
}
}



if (global.target_type==4){

if (global.target_rotation==0)
{
tile_x[1]=tile_x[0]-1;//    [tile1]      [tile2]
tile_y[1]=tile_y[0]+0;//
tile_x[2]=tile_x[0]+1;//		  [target]
tile_y[2]=tile_y[0]+1;//
tile_x[3]=tile_x[0]-0;//	      [tile3]
tile_y[3]=tile_y[0]-1;//
}
else if (global.target_rotation==1)
{
tile_x[1]=tile_x[0]+0;//          [tile1]      
tile_y[1]=tile_y[0]+1;//
tile_x[2]=tile_x[0]-1;//		  [target]
tile_y[2]=tile_y[0]-1;//
tile_x[3]=tile_x[0]+1;//   [tile2]       [tile3]
tile_y[3]=tile_y[0]+0;//
}

}


if (global.target_type==99) //Display Range for Walking
{	
var distance=2;
tiles=scr_Find_x_steps(tile_x[0],tile_y[0],distance)
for (var setter=0;setter<array_length_1d(tiles);setter+=1)
{

//Friendly Space
if ((tile_x[0]>=4) && (tile_x[0] <=6) && (tile_y[0] >=2) && (tile_y[0]<=5))
{
	if ((tiles[setter].array_x>=4) && (tiles[setter].array_x <=6) && (tiles[setter].array_y >=2) && (tiles[setter].array_y<=5)){
tiles[setter].selectable=true;	
	}
}

//Enemy Space
else
{
if ((tiles[setter].array_x>=0) && (tiles[setter].array_x <=2) && (tiles[setter].array_y >=0) && (tiles[setter].array_y<=3)){
tiles[setter].selectable=true;	
}
}
//show_debug_message("Tiles in series-->"+string(tiles[setter].array_x)+"::"+string(tiles[setter].array_y))
}
}
















if (global.target_type==1){
for (var checker=1; checker<array_length_1d(tile_x);checker+=1){
	if (tile_x[checker]<0||tile_x[checker]>6||tile_y[checker]<0||tile_y[checker]>5)
{
	tiles[checker]=master_fake;
}
else{
	//show_debug_message("The Tilese Selected: "+string(checker));
	tiles[checker]=global.hex_tile_array[tile_x[checker],tile_y[checker]];
	}
}
}



if (global.target_type>1 && global.target_type<99 ){
for (var checker=1; checker<array_length_1d(tile_x);checker+=1){
	if (tile_x[checker]<0||tile_x[checker]>6||tile_y[checker]<0||tile_y[checker]>5)
{
	tiles[checker]=master_fake;
}
else{
	//show_debug_message("The Tilese Selected: "+string(checker));
	tiles[checker]=global.hex_tile_array[tile_x[checker],tile_y[checker]];
	}
}

with (hex_tile)
{
	the_cursor=false;
	false_cursor=false;
if (in_range){
	if (image_index!=3){
image_index=3;
//evperfomalarm3
	}
}
}
}




for (var targets=0;targets<array_length_1d(tiles);targets+=1){

with(tiles[targets]){
	if (global.target_type==99 && targets==0){the_cursor=true;}//event_perform_object(hex_tile,ev_alarm, 1);}
	else{
		if (tiles[targets].array_x==array_x&&tiles[targets].array_y==array_y)
		{
			if (global.target_type<99&&skip==false){selectable=true;}
			if (global.target_type<99&&skip==true){false_selectable=true;}
		
			if (targets==0){if(in_range){the_cursor=true;}else{false_cursor=true;}}//event_perform_object(hex_tile,ev_alarm, 1);}
			else{if(tiles[targets].selectable==true){image_index=2;}//event_perform_object(hex_tile,ev_alarm, 2);}}
					else{if(tiles[targets].false_selectable==true){image_index=2;}}}
			//show_debug_message("Tile# "+string(targets)+" - X"+string(tiles[targets].array_x)+" -Y"+string(tiles[targets].array_y))
		}
}
}
}


//}//if skip == false
