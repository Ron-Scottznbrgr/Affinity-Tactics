/// @desc Fadeout to next room


if ((active==0)&&(obj_OW_Player.hspd>0||obj_OW_Player.vspd>0||obj_OW_Player.hspd<0||obj_OW_Player.vspd<0)){
randomize();
	rng_battle = random_range(0, encounter_rate);


obj_OW_Player.time_until_battle+=rng_battle;
show_debug_message(obj_OW_Player.time_until_battle);
if (obj_OW_Player.time_until_battle>=obj_OW_Player.battle_starts_at && active==0){
	
	
	///@desc initiliaze
//obj_OW_Player.time_until_battle=0;


//var r_encounter = round(random_range(1, array_height_2d(encounter_List)));

randomize();
var r_encounter = round(random_range(0, (array_length_1d(encounter_List)-1)));
//show_message(r_encounter);
//show_message(array_length_1d(encounter_List)-1);
var tempArray;
tempArray=encounter_List[r_encounter];
for (var xyz=0; xyz< array_length_1d(tempArray); xyz += 1) {
	
	obj_OW_Player.enemy_data[xyz]=tempArray[xyz];
	}

//show_message(array_length_1d(tempArray));
//show_message(r_encounter);
active=1;
room_fadeout(target,c_black,0.05,obj_OW_Player.x,obj_OW_Player.y);

}
else {
//obj_OW_Player.x-=16;

}

	
}
else if (active==1){
	
	
}