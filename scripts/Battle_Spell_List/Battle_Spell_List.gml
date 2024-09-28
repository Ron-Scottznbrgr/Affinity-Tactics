/// @desc create enemy from ids in obj_OW_Player
/// @arg Spell_ID
/// @arg Info#


var data;
/*data[0]="Null";//spell name
data[1]=0;//power
data[2]=0;//range
data[3]=0;//target type
data[4]=0;//Element Type
data[5]=0;//Secondary Element(?)
data[6]="<Desc_Goes_Here>";//Description
*/

switch (argument0){

case 0:
data="Null";
break;

case 1001: data = F001_Firewisp(argument1);
break;

case 2001: data = E001_Rockthrow(argument1);
break;

case 3001: data = W001_Waterorb(argument1);
break;

case 4001: data = A001_Gust(argument1);
break;

case 1002: data = F002_Fire_Dummy(argument1);
break;

case 2002: data = E002_Earth_Dummy(argument1);
break;

case 2003: data = E003_EarthStatus(argument1);
break;

case 3002: data = W002_Water_Dummy(argument1);
break;


case 4002: data = A002_Air_Dummy(argument1);
break;
}

return data;