///desc Advance Clock Ticks
instance_destroy(obj_battle_cursor);
//show_debug_message("-------------"+string(battleController.numofChars));
numofChars=battleController.numofChars;
averageLevel = 100;
compressorRatio=10;
fullClockMultiplier=5;
fullClockTime = (averageLevel * compressorRatio)*fullClockMultiplier;
/*for(var xx = 0; xx < 8; xx += 1){
ds_grid_set(global.turnOrder,3,xx,(averageLevel*compressorRatio)*ds_grid_get(global.turnOrder,1,xx));
}
*/
ds_grid_sort(global.turnOrder,4,0);


topSpeed = ds_grid_get(global.turnOrder,4,0);
addingSpeed =0;



while (true) {

topSpeed = ds_grid_get(global.turnOrder,4,0);
if (topSpeed >= fullClockTime)
{
	//topSpeed = ds_grid_get(global.turnOrder,1,0);
	ds_grid_set(global.turnOrder,4,0,topSpeed-fullClockTime);
break;	
}


for (var xxx = 0; xxx < battleController.numofChars; xxx += 1){
	addingSpeed=ds_grid_get(global.turnOrder,1,xxx);
	addingSpeed+=(averageLevel*compressorRatio)
	currentTicks=ds_grid_get(global.turnOrder,4,xxx);
	ds_grid_set(global.turnOrder,4,xxx,(currentTicks+addingSpeed));
}


ds_grid_sort(global.turnOrder,4,0);

battleController.clockTicks+=1;
//show_debug_message(topSpeed);
}

instance_create_layer(9000,9000, "GUI_Instances", obj_battle_cursor);
if (global.endTurn==true){
instance_create_layer(100,200,"Instances",btn_Move);
//instance_create_layer(100,260,"Instances",btn_Magic);
}
global.endTurn=false;
//event_perform_object(obj_battle_cursor,ev_alarm,0);


/*/
averageLevel = 100;
compressorRatio=10;
fullClockMultiplier=5;
fullClockTime = (averageLevel * compressorRatio)*fullClockMultiplier;
/*for(var xx = 0; xx < 8; xx += 1){
ds_grid_set(global.turnOrder,3,xx,(averageLevel*compressorRatio)*ds_grid_get(global.turnOrder,1,xx));
}

ds_grid_sort(global.turnOrder,3,0);

topSpeed = ds_grid_get(global.turnOrder,3,0);
addingSpeed =0;



while (true) {

topSpeed = ds_grid_get(global.turnOrder,3,0);
if (topSpeed >= fullClockTime)
{
	topSpeed = ds_grid_get(global.turnOrder,3,0);
	ds_grid_set(global.turnOrder,3,0,topSpeed-fullClockTime);
break;	
}


for (var xxx = 0; xxx < numofChars; xxx += 1){
	addingSpeed=ds_grid_get(global.turnOrder,1,xxx);
	addingSpeed+=(averageLevel*compressorRatio)
	currentTicks=ds_grid_get(global.turnOrder,3,xxx);
	ds_grid_set(global.turnOrder,3,xxx,(currentTicks+addingSpeed));
}


ds_grid_sort(global.turnOrder,3,0);

clockTicks+=1;
show_debug_message(topSpeed);
}
/**/