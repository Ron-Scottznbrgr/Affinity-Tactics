//function Find neighbouring hex tile
/// @desc tile_x, tile_y, direction number (origin_x,origin_y, direction)
var o_x=argument0;
var o_y=argument1;
var t_x=o_x;
var t_y=o_y;
var master_fake;
var attempted_tile;

with (fake_tile){
	master_fake=fake_tile;
	break;
}



switch ((argument2)){

case 0:
t_x-=1;
t_y-=1;

//tile_x[1]=tile_x[0]-1;//		[target]	
//tile_y[1]=tile_y[0]-1;//	[tile1]
break;

case 1:
t_x-=1;
t_y-=0;

//tile_x[1]=tile_x[0]-1;//	[tile1]
//tile_y[1]=tile_y[0]-0;//		[target]
break;

case 2:
t_x+=0;
t_y+=1;

//tile_x[1]=tile_x[0]+0;//	[tile1]
//tile_y[1]=tile_y[0]+1;//	[target]
break;

case 3:
t_x+=1;
t_y+=1;

//tile_x[1]=tile_x[0]+1;//		[tile1]
//tile_y[1]=tile_y[0]+1;//	[target]
break;

case 4:
t_x+=1;
t_y-=0;

//tile_x[1]=tile_x[0]+1;//	[target]
//tile_y[1]=tile_y[0]+0;//		[tile1]
break;

case 5:
t_x-=0;
t_y-=1;

//tile_x[1]=tile_x[0]-0;//	[target]
//tile_y[1]=tile_y[0]-1;//	[tile1]
break;
}//switch


//show_debug_message(string(o_x)+" "+string(o_y)+" : "+ string(t_x)+" "+string(t_y));

if (t_x<0||t_x>6||t_y<0||t_y>5)
{
return master_fake;
}
else
{
	//show_debug_message("Made it to real IF");
	
	//show_debug_message("TILE_DATA [x,y,occ]: "+string(global.hex_tile_array[t_x,t_y].array_x)+" "+string(global.hex_tile_array[t_x,t_y].array_y)+" : "+ string(global.hex_tile_array[t_x,t_y].occupied)+" "+string(global.hex_tile_array[t_x,t_y].id));
	
	attempted_tile=global.hex_tile_array[t_x,t_y];
	//if (attempted_tile.occupied==false){
		return attempted_tile;
	//}

}	
