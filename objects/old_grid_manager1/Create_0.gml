//setting x/y to hex tiles
hex_x_location=250;
hex_y_location=356.5;
hex_x_offset=80;
hex_y_offset=90;


for (hex_x = 0; hex_x < 7; hex_x += 1){
	if ((hex_x ==1) || (hex_x == 3) || (hex_x==5)){
		hex_num_offset=4;
		}
	else{hex_num_offset=3;}
	
for (hex_y=0;hex_y<hex_num_offset;hex_y+=1)
{
	if (hex_num_offset==3)
	{
		//SMALL COLUMN
		global.hex_tile_array[hex_x,hex_y]=instance_create_layer(hex_x_location+(hex_x*hex_x_offset),hex_y_location+(hex_y_offset*hex_y),"Hex_Tiles", hex_tile);
		
		//show_debug_message(hex_tile_array[hex_x,hex_y].id)
		//fire_hero = instance_create_layer(750, 575, "Instances", hO_Fire);
		}
	else
	{
		//LARGE COLUMN
		//fire_hero = instance_create_layer(750, 575, "Instances", hO_Fire);
		global.hex_tile_array[hex_x,hex_y]=instance_create_layer(hex_x_location+(hex_x*hex_x_offset),(hex_y_location-45)+(hex_y_offset*hex_y),"Hex_Tiles", hex_tile);
		}
}
}

var i;
for (i = 0; i < instance_number(hex_tile); i += 1)
   {
   global.hex_tile_ids[i] = instance_find(hex_tile,i);
   }

//