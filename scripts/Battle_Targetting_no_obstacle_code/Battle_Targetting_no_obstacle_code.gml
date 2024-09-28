/// @desc find_hex_grid (id)
/// @arg id

var tile_id=argument0;
var tile_x=[];
var tile_y=[];

var tiles=[];

var master_fake;


show_debug_message(argument0);

show_debug_message(tile_id);

with (hex_tile){
	selectable=false;
if (id == tile_id){

	tile_x[0]=array_x;
	tile_y[0]=array_y;
	
	//tiles[0]=hex_tile;
	
tiles[0]=global.hex_tile_array[tile_x[0],tile_y[0]];	
	
}
}



with (fake_tile){
	master_fake=fake_tile;
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


if (global.target_type==99)
{
var distance;
var tile_counter=0;
with (hex_tile)
{
	
	
	
distance = scr_Hex_Distances(tile_x[0],tile_y[0],array_x,array_y)

if ((tile_x[0]>=4) && (tile_x[0] <=6) && (tile_y[0] >=2) && (tile_y[0]<=5))
{
if ((distance < 3) && (occupied==false) && (array_x>=4) && (array_x <=6) && (array_y >=2) && (array_y<=5))
{
tile_counter++;
tile_x[tile_counter]=array_x;
tile_y[tile_counter]=array_y;
}//ditance if
}//If Player Side
else{
if ((distance < 3) && (occupied==false) && (array_x>=0) && (array_x <=2) && (array_y >=0) && (array_y<=3))
{
tile_counter++;
tile_x[tile_counter]=array_x;
tile_y[tile_counter]=array_y;
}//ditance if
}//else


}//With
}








if (global.target_type>1){
for (var checker=1; checker<array_length_1d(tile_x);checker+=1){
	if (tile_x[checker]<0||tile_x[checker]>6||tile_y[checker]<0||tile_y[checker]>5)
{
	tiles[checker]=master_fake;
}
else{
	show_debug_message(checker);
	tiles[checker]=global.hex_tile_array[tile_x[checker],tile_y[checker]];
	}
}
}


for (var targets=0;targets<array_length_1d(tiles);targets+=1){

with(tiles[targets]){
	if (global.target_type==99 && targets==0){event_perform_object(hex_tile,ev_alarm, 1);}
	else{
		if (tiles[targets].array_x==array_x&&tiles[targets].array_y==array_y)
		{
			selectable=true;
		
			if (targets==0){event_perform_object(hex_tile,ev_alarm, 1);}
			else{event_perform_object(hex_tile,ev_alarm, 2);}

}
}
}
}