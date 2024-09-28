/*fire_hero = instance_create_layer(750, 575, "Instances", hO_Fire);
earth_hero = instance_create_layer(825, 500, "Instances", hO_Earth);
air_hero = instance_create_layer(825, 650, "Instances", hO_Air);
water_hero = instance_create_layer(900, 575, "Instances", hO_Water);
*/
var inst;
var r_tile;
var c_tile;

//global.character_array[3+array_length_1d(obj_OW_Player.enemy_data)]=noone;


for(var i = 0; i < battleController.numofChars; i += 1) {

//inst = instance_create_layer(200 + (i*50), 300, "Instances", obj_char);
	//show_debug_message(inst);
//with (obj_char){

{
do
   {
randomize();

if (i <4){
///////////////////////////////////If we are creating player Characters...
r_tile = round(random_range(4, 6));
switch(r_tile){
case 4: c_tile = round(random_range(0, 2));
break;
case 5: c_tile = round(random_range(0, 3));
break;
case 6: c_tile = round(random_range(0, 2));
break;
}
}
else{
////////////////////////////////////If we are creating enemies...
r_tile = round(random_range(0, 2));
switch(r_tile){
case 0: c_tile = round(random_range(0, 2));
break;
case 1: c_tile = round(random_range(0, 3));
break;
case 2: c_tile = round(random_range(0, 2));
break;
}
}

}
until (global.hex_tile_array[r_tile,c_tile].occupied==false);
}



//var c_tile = irandom(
//global.hex_tile_ids[23]
//global.hex_tile_array[hex_x,hex_y]
with (instance_create_layer(global.hex_tile_array[r_tile,c_tile].x,global.hex_tile_array[r_tile,c_tile].y , "Instances", obj_char)){

if (char_has_data==false){
for (var xxx = 0; xxx < array_length_1d(obj_OW_Player.H_Fire); xxx += 1) {
	
	
	
	
if (i==0){
char_data[xxx]=obj_OW_Player.H_Fire[xxx];
//show_debug_message(obj_OW_Player.H_Fire[0])

}
else if (i==1){
char_data[xxx]=obj_OW_Player.H_Water[xxx];
	show_debug_message(obj_OW_Player.H_Water[0])
}
else if (i==2){
char_data[xxx]=obj_OW_Player.H_Earth[xxx];
	//show_debug_message(obj_OW_Player.H_Earth[0])
}
else if (i==3){
char_data[xxx]=obj_OW_Player.H_Air[xxx];
	//show_debug_message(obj_OW_Player.H_Air[0])
}
else
{
	char_data[xxx]= (Battle_Generate_Enemy(obj_OW_Player.enemy_data[i-4],xxx,0));
}
	
	
}

//global.character_array[i]=obj_char;

ds_grid_set(global.turnOrder,0,i, char_data[1]);
ds_grid_set(global.turnOrder,1,i, char_data[7]);
ds_grid_set(global.turnOrder,2,i, char_data[0]);


event_perform_object(obj_char,ev_alarm, 11);
char_has_data=true;

char_tile_number=global.hex_tile_array[r_tile,c_tile].id;
global.hex_tile_array[r_tile,c_tile].occupied=true;
show_debug_message(char_tile_number);
global.character_array[i]=obj_char;
}
}
}

/*
var enemyNum = 4;

global.enemyList[enemyNum]=noone;
countChoco=0;
countBomb=0;
countDragon=0;
countDruid=0;

for(var i = 0; i < enemyNum; i += 1) {
	if(i == 0)
	{
		var charX = 100;
		var charY = 575;
	}

	if(i == 1)
	{
		var charX = 175;
		var charY = 500;
	}

	if(i == 2)
	{
		var charX = 175;
		var charY = 650;
	}

	if(i == 3)
	{
		var charX = 250;
		var charY = 575;
	}

	randomize();

	randEnemy = floor(random_range(0, 3 + 1));

	var enemyName = "Enemy_"+string(i);

	if(randEnemy == 0)
	{
		countChoco+=1;
		enemyList[i] = instance_create_layer(charX, charY, "Instances", eO_choco);
		if (countChoco>1){
		enemyList[i].char_name+=" - "+string(countChoco);	
		}
	}

	if(randEnemy == 1)
	{
		countBomb+=1;
		enemyList[i] = instance_create_layer(charX, charY, "Instances", eO_bomb);
		if (countBomb>1){
		enemyList[i].char_name+=" - "+string(countBomb);	
		}
	}

	if(randEnemy == 2)
	{
		countDragon+=1;
		enemyList[i] = instance_create_layer(charX, charY, "Instances", eO_dragon);
		if (countDragon>1){
		enemyList[i].char_name+=" - "+string(countDragon);	
		}
	}

	if(randEnemy == 3)
	{
		countDruid+=1;
		enemyList[i] = instance_create_layer(charX, charY, "Instances", eO_druid);
		if (countDruid>1){
		enemyList[i].char_name+=" - "+string(countDruid);	
		}
	}
}

//show_debug_message(global.character_array[0].char_data[0]);
show_debug_message(global.character_array[2].char_data[0])
ds_grid_set(global.turnOrder,0,0, global.character_array[0].char_data[1]);
ds_grid_set(global.turnOrder,1,0, global.character_array[0].char_data[7]);
ds_grid_set(global.turnOrder,2,0, global.character_array[0].char_data[0]);
ds_grid_set(global.turnOrder,0,1, global.character_array[1].char_data[1]);
ds_grid_set(global.turnOrder,1,1, global.character_array[1].char_data[7]);
ds_grid_set(global.turnOrder,2,1, global.character_array[1].char_data[0]);
ds_grid_set(global.turnOrder,0,2, global.character_array[2].char_data[1]);
ds_grid_set(global.turnOrder,1,2, global.character_array[2].char_data[7]);
ds_grid_set(global.turnOrder,2,2, global.character_array[2].char_data[0]);
ds_grid_set(global.turnOrder,0,3, global.character_array[3].char_data[1]);
ds_grid_set(global.turnOrder,1,3, global.character_array[3].char_data[7]);
ds_grid_set(global.turnOrder,2,3, global.character_array[3].char_data[0]);
*/
ds_grid_sort(global.turnOrder,1,0);


/*
for(var ii = 0; ii < enemyNum; ii += 1) {

ds_grid_add(global.turnOrder,0,4+ii, enemyList[ii].sprite_index);
ds_grid_add(global.turnOrder,1,4+ii, enemyList[ii].char_speed-1);
ds_grid_add(global.turnOrder,2,4+ii, enemyList[ii].char_name);
}

ds_grid_sort(global.turnOrder,1,0);
*/
/* */