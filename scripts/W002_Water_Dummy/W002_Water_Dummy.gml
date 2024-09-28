/// @desc return Spell Components
/// @arg info Number
/*data[0]="Name";//spell name
data[1]=5;//power 0 to 5.
data[2]=4;//range
data[3]=3;//target type
data[4]=2;//Spell Type
data[5]="Big Long Text Box";//Description*/

var spell_info="";

switch (argument0){

case 0://Name
spell_info = "Water_Dummy";
break;

case 1://Power (0 to 5) - 2
spell_info=3
break;

case 2://Range (0 to 5) - 2
spell_info=2
break;

case 3://Target Type (0 to 5) - 2
spell_info=3
break;

case 4://Element (0 to 5) - 2
spell_info=3
break;

case 5://Sub Element (0 to 5) - 2
spell_info=3
break;

case 6://Description
spell_info="Dummy Water Spell"
break;

case 7://???
spell_info=2
break;
}
return spell_info;