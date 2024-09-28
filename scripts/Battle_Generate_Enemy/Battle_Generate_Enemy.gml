/// @desc create enemy from ids in obj_OW_Player
/// @arg Enemy_ID
/// @arg character_array_data[x]
/// @arg Stats or Spells

var data;

if (argument1==0 && argument2==0){
	//if character data array count = 0, then get name
data = Monster_Names();	
}
else{

switch (argument0){

case 0:	data = Bomb_000(argument1,argument2);
break;

case 10: data = Dragon_010(argument1,argument2);
break;

case 20: data = Skele_020(argument1,argument2);
break;

case 30: data = Druid_030(argument1,argument2);
break;

case 40: data = Choco_040(argument1,argument2);
break;

case 50: data = Goblin_050(argument1,argument2);
break;

case 60: data = Dragon_010(argument1,argument2);
break;

}
}
return data;