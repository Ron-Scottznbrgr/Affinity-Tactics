//function Find Hex in K steps
/// @desc K Steps_distance (origin_x,origin_y, movement)

var o_x=argument0;
var o_y=argument1;
var char_movement =argument2;
// show_debug_message("Length of: distance: "+string(char_movement));

var neighbour;
var visited=[];
var visited_counter=1;
var fringes=[];
var fringe_counter=0;
var movement_0=[];
var movement_1=[];
var movement_2=[];
var movement_3=[];
var movement_4=[];
var movement_5=[];
var movement_6=[];

visited[0] = global.hex_tile_array[o_x,o_y];
movement_0[0]=global.hex_tile_array[o_x,o_y];
fringes[0]=movement_0;
fringes[1]=movement_1;
fringes[2]=movement_2;
fringes[3]=movement_3;
fringes[4]=movement_4;
fringes[5]=movement_5;
fringes[6]=movement_6;

var tile_already_exists=0;



 for (var k = 1; k <= char_movement; k++)
 {
	 //show_debug_message("Length of: Fringe: "+string(array_length_1d(fringes[k-1])));
	 fringe_counter=0;
	 for (var prev_array=0; prev_array<array_length_1d(fringes[k-1]);prev_array++)
	 {
//		 show_debug_message("2nd For: Fringe: "+string(k-1));
		 
	 for (var dir = 0; dir < 6; dir++)
	 {
//		  show_debug_message("Direction: "+string(dir));
switch ((k-1)){

case 0:	neighbour = scr_Find_Neighbour(movement_0[prev_array].array_x,movement_0[prev_array].array_y,dir);
break;
case 1:	neighbour = scr_Find_Neighbour(movement_1[prev_array].array_x,movement_1[prev_array].array_y,dir);
break;
case 2:	neighbour = scr_Find_Neighbour(movement_2[prev_array].array_x,movement_2[prev_array].array_y,dir);
break;
case 3:	neighbour = scr_Find_Neighbour(movement_3[prev_array].array_x,movement_3[prev_array].array_y,dir);
break;
case 4:	neighbour = scr_Find_Neighbour(movement_4[prev_array].array_x,movement_4[prev_array].array_y,dir);
break;
case 5:	neighbour = scr_Find_Neighbour(movement_5[prev_array].array_x,movement_5[prev_array].array_y,dir);
break;
case 6:	neighbour = scr_Find_Neighbour(movement_6[prev_array].array_x,movement_6[prev_array].array_y,dir);
break;
}//switch	
	//show_debug_message("NEIGHBOUR Tile XYOCC: "+string(neighbour.array_x)+" "+string(neighbour.array_y)+" :"+string(neighbour.occupied));
if (neighbour.is_fake_tile==false)
{
	tile_already_exists=0;
	for (var investigate=0; investigate<array_length_1d(visited);investigate++)
	{
		if (visited[investigate].array_x == neighbour.array_x && visited[investigate].array_y == neighbour.array_y)
		{
			tile_already_exists=1;
			investigate=array_length_1d(visited);
			//break;
		}
		
	}

if (tile_already_exists==0){
	
visited[visited_counter]=neighbour;
	visited_counter+=1;
	//show_debug_message("Tiles In Visited: ["+string(visited_counter)+"] "+string(visited[investigate].array_x)+" / "+string(visited[investigate].array_y))
	//show_debug_message("Tiles In Visited: ["+string(visited_counter)+"] "+string(neighbour.array_x)+" / "+string(neighbour.array_y))
	
	switch ((k)){
case 1:	movement_1[fringe_counter]=neighbour;
fringes[1]=movement_1;
break;
case 2:	movement_2[fringe_counter]=neighbour;
fringes[2]=movement_2;
break;
case 3:	movement_3[fringe_counter]=neighbour;
fringes[3]=movement_3;
break;
case 4:	movement_4[fringe_counter]=neighbour;
fringes[4]=movement_4;
break;
case 5:	movement_5[fringe_counter]=neighbour;
fringes[5]=movement_5;
break;
case 6:	movement_6[fringe_counter]=neighbour;
fringes[6]=movement_6;
break;
}//switch
		fringe_counter+=1;
	
	
}
}
	

	
	

	 }//for var dir
	 }//for var prev_array
 }//for var k 
  
  return visited;
  
  //tiles[0]=global.hex_tile_array[tile_x[0],tile_y[0]];	