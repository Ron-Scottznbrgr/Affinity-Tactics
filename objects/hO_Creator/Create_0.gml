/*fire_hero = instance_create_layer(750, 575, "Instances", hO_Fire);
earth_hero = instance_create_layer(825, 500, "Instances", hO_Earth);
air_hero = instance_create_layer(825, 650, "Instances", hO_Air);
water_hero = instance_create_layer(900, 575, "Instances", hO_Water);
*/


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

ds_grid_set(global.turnOrder,0,0, hero_fire);
ds_grid_set(global.turnOrder,1,0, fire_hero.char_speed);
ds_grid_set(global.turnOrder,2,0, fire_hero.char_name);
ds_grid_set(global.turnOrder,0,1, hero_earth);
ds_grid_set(global.turnOrder,1,1, earth_hero.char_speed);
ds_grid_set(global.turnOrder,2,1, earth_hero.char_name);
ds_grid_set(global.turnOrder,0,2, hero_air);
ds_grid_set(global.turnOrder,1,2, air_hero.char_speed);
ds_grid_set(global.turnOrder,2,2, air_hero.char_name);
ds_grid_set(global.turnOrder,0,3, hero_water);
ds_grid_set(global.turnOrder,1,3, water_hero.char_speed);
ds_grid_set(global.turnOrder,2,3, water_hero.char_name);

ds_grid_sort(global.turnOrder,1,0);

for(var ii = 0; ii < enemyNum; ii += 1) {

ds_grid_add(global.turnOrder,0,4+ii, enemyList[ii].sprite_index);
ds_grid_add(global.turnOrder,1,4+ii, enemyList[ii].char_speed-1);
ds_grid_add(global.turnOrder,2,4+ii, enemyList[ii].char_name);
}
ds_grid_sort(global.turnOrder,1,0);