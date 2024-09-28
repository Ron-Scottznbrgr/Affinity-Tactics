//setting x/y to hex tiles
hex_x_location=250;

hex_y_location=556.5
//hex_y_location=356.5;
hex_x_offset=80;
hex_y_offset=90;
var tile_counter_x=0;
var tile_counter_y=0;
var hex_counter=0;

for (var x_row = 0; x_row < 7; x_row += 1)
{
hex_counter=0;
if ((x_row ==1) || (x_row == 3) || (x_row==5)){
		var hex_num_offset=4;
		tile_counter_y+=1;
		}
	else{hex_num_offset=3;}
	
	
for (var y_row=0; y_row<6; y_row+=1)
{
		
switch(x_row){
case 0: 
if(hex_counter<3)
{
global.hex_tile_array[x_row,y_row]=instance_create_layer(hex_x_location+(x_row*hex_x_offset),hex_y_location+(hex_y_offset*tile_counter_y),"Hex_Tiles", hex_tile);
global.hex_tile_array[x_row,y_row].array_x=x_row;
global.hex_tile_array[x_row,y_row].array_y=y_row;
tile_counter_y-=1;	
}
else
{
global.hex_tile_array[x_row,y_row]=instance_create_layer(9001+(x_row*hex_x_offset),9001+(hex_y_offset*tile_counter_y),"Hex_Tiles", fake_tile);
global.hex_tile_array[x_row,y_row].image_index=3;
global.hex_tile_array[x_row,y_row].visible=false;
}
break;
	

case 1: 
if(hex_counter<4)
{
global.hex_tile_array[x_row,y_row]=instance_create_layer(hex_x_location+(x_row*hex_x_offset),hex_y_location-45+(hex_y_offset*tile_counter_y),"Hex_Tiles", hex_tile);
global.hex_tile_array[x_row,y_row].array_x=x_row;
global.hex_tile_array[x_row,y_row].array_y=y_row;
tile_counter_y-=1;	
}
else
{
global.hex_tile_array[x_row,y_row]=instance_create_layer(9001+(x_row*hex_x_offset),9001-45+(hex_y_offset*tile_counter_y),"Hex_Tiles", fake_tile);
global.hex_tile_array[x_row,y_row].image_index=3;
global.hex_tile_array[x_row,y_row].visible=false;
}
break;

case 2: 
if(hex_counter==1 || hex_counter==2 ||hex_counter==3)
{
global.hex_tile_array[x_row,y_row]=instance_create_layer(hex_x_location+(x_row*hex_x_offset),hex_y_location+(hex_y_offset*tile_counter_y),"Hex_Tiles", hex_tile);
global.hex_tile_array[x_row,y_row].array_x=x_row;
global.hex_tile_array[x_row,y_row].array_y=y_row;
tile_counter_y-=1;	
}
else
{
global.hex_tile_array[x_row,y_row]=instance_create_layer(9001+(x_row*hex_x_offset),9001+(hex_y_offset*tile_counter_y),"Hex_Tiles", fake_tile);
global.hex_tile_array[x_row,y_row].image_index=3;
global.hex_tile_array[x_row,y_row].visible=false;
}
break;

case 3: 
if(hex_counter==1 || hex_counter==2 ||hex_counter==3||hex_counter==4)
{
global.hex_tile_array[x_row,y_row]=instance_create_layer(hex_x_location+(x_row*hex_x_offset),hex_y_location-45+(hex_y_offset*tile_counter_y),"Hex_Tiles", hex_tile);
global.hex_tile_array[x_row,y_row].array_x=x_row;
global.hex_tile_array[x_row,y_row].array_y=y_row;
tile_counter_y-=1;	
}
else
{
global.hex_tile_array[x_row,y_row]=instance_create_layer(9001+(x_row*hex_x_offset),9001-45+(hex_y_offset*tile_counter_y),"Hex_Tiles", fake_tile);
global.hex_tile_array[x_row,y_row].image_index=3;
global.hex_tile_array[x_row,y_row].visible=false;
}
break;

case 4: 
if(hex_counter==2 ||hex_counter==3||hex_counter==4)
{
global.hex_tile_array[x_row,y_row]=instance_create_layer(hex_x_location+(x_row*hex_x_offset),hex_y_location+(hex_y_offset*tile_counter_y),"Hex_Tiles", hex_tile);
global.hex_tile_array[x_row,y_row].array_x=x_row;
global.hex_tile_array[x_row,y_row].array_y=y_row;
tile_counter_y-=1;	
}
else
{
global.hex_tile_array[x_row,y_row]=instance_create_layer(9001+(x_row*hex_x_offset),9001+(hex_y_offset*tile_counter_y),"Hex_Tiles", fake_tile);
global.hex_tile_array[x_row,y_row].image_index=3;
global.hex_tile_array[x_row,y_row].visible=false;
}
break;

case 5: 
if(hex_counter==2 ||hex_counter==3||hex_counter==4||hex_counter==5)
{
global.hex_tile_array[x_row,y_row]=instance_create_layer(hex_x_location+(x_row*hex_x_offset),hex_y_location-45+(hex_y_offset*tile_counter_y),"Hex_Tiles", hex_tile);
global.hex_tile_array[x_row,y_row].array_x=x_row;
global.hex_tile_array[x_row,y_row].array_y=y_row;
tile_counter_y-=1;	
}
else
{
global.hex_tile_array[x_row,y_row]=instance_create_layer(9001+(x_row*hex_x_offset),9001-45+(hex_y_offset*tile_counter_y),"Hex_Tiles", fake_tile);
global.hex_tile_array[x_row,y_row].image_index=3;
global.hex_tile_array[x_row,y_row].visible=false;
}
break;

case 6: 
if(hex_counter==3||hex_counter==4||hex_counter==5)
{
global.hex_tile_array[x_row,y_row]=instance_create_layer(hex_x_location+(x_row*hex_x_offset),hex_y_location+(hex_y_offset*tile_counter_y),"Hex_Tiles", hex_tile);
global.hex_tile_array[x_row,y_row].array_x=x_row;
global.hex_tile_array[x_row,y_row].array_y=y_row;
tile_counter_y-=1;	
}
else
{
global.hex_tile_array[x_row,y_row]=instance_create_layer(9001+(x_row*hex_x_offset),9001+(hex_y_offset*tile_counter_y),"Hex_Tiles", fake_tile);
global.hex_tile_array[x_row,y_row].image_index=3;
global.hex_tile_array[x_row,y_row].visible=false;
}
break;

}
	
hex_counter+=1;


}	
tile_counter_x+=1;
tile_counter_y=0;
}


var i;
for (i = 0; i < instance_number(hex_tile); i += 1)
   {
   global.hex_tile_ids[i,0] = instance_find(hex_tile,i);
   global.hex_tile_ids[i,1] = global.hex_tile_ids[i,0].array_x;
   global.hex_tile_ids[i,2] = global.hex_tile_ids[i,0].array_y;
   }

//