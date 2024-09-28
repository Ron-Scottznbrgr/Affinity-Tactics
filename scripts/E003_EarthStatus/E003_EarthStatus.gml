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
spell_info = "Viper Drain";
break;

case 1://Power (0 to 5) - 2
spell_info=900
break;

case 2://Range (0 to 5) - 2
spell_info=3
break;

case 3://Target Type (0 to 5) - 2
spell_info=3
break;

case 4://Element (0 to 5) - 2
spell_info=2
break;

case 5://Sub Element (0 to 5) - 2
spell_info=2
break;

case 6://Description
spell_info="Damages, Moderate chance of Poison, and Drains a low amount of HP."
break;

case 7://???
spell_info=999
break;

case 8://Raw Damage?
spell_info=true;
break;

case 9://Status
spell_info=true;
break;

#region //Status///////////////////////////////////////////
/////////////////////////////////Status 1///////////////////////////////////////
case 10://Status1
spell_info=1;
break;

case 11://Status1%
spell_info=50;
break;

/////////////////////////////////Status 2///////////////////////////////////////
case 12://Status2
spell_info=0;
break;

case 13://Status2%
spell_info=0;
break;


/////////////////////////////////Status 3///////////////////////////////////////
case 14://Status3
spell_info=0;
break;

case 15://Status3%
spell_info=0;
break;


/////////////////////////////////Status 4///////////////////////////////////////
case 16://Status4
spell_info=0;
break;

case 17://Status4%
spell_info=0;
break;

/////////////////////////////////Status 5///////////////////////////////////////
case 18://Status5
spell_info=0;
break;

case 19://Status5%
spell_info=0;
break;

/////////////////////////////////Status 6///////////////////////////////////////
case 20://Status6
spell_info=0;
break;

case 21://Status6%
spell_info=0;
break;

/////////////////////////////////Status 7///////////////////////////////////////
case 22://Status7
spell_info=0;
break;

case 23://Status7%
spell_info=0;
break;

/////////////////////////////////Status 8///////////////////////////////////////
case 24://Status8
spell_info=0;
break;

case 25://Status8%
spell_info=0;
break;

/////////////////////////////////Status 9///////////////////////////////////////
case 26://Status9
spell_info=0;
break;

case 27://Status9%
spell_info=0;
break;

/////////////////////////////////Status 10///////////////////////////////////////
case 28://Status10
spell_info=0;
break;

case 29://Status10%
spell_info=0;
break;
#endregion

case 30://Drain
spell_info=true;
break;

case 31://Drain%
spell_info=50;
break;

case 32://Heal
spell_info=false;
break;

case 33://Heal%?
spell_info=false;
break;

case 34: //Damage%?
spell_info=false;
break;

case 35://Damage% or Heal% Amount
spell_info=0;
break;
}
return spell_info;
