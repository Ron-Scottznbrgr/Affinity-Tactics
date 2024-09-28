/// @desc return enemy bomb stats
/// @arg character_array_data[x]
/// @arg Stats of Spells
var Character_Stats=[];
var Character_Spells=[];


Character_Stats[0]="Malboro";		//Name
Character_Stats[1]=spr_malboro;//Sprite
Character_Stats[2]=5;			//LEVEL
Character_Stats[3]=50;			//XP

Character_Stats[4]=100;			//HP
Character_Stats[5]=20;			//ATK
Character_Stats[6]=15;			//DEF
Character_Stats[7]=350;			//SPD

Character_Stats[8]=0;			//WAFF
Character_Stats[9]=100;			//FAFF
Character_Stats[10]=30;			//EAFF
Character_Stats[11]=30;			//AAFF

Character_Stats[12]=0;			//MA_WAFF (Equipment+Other)
Character_Stats[13]=30;			//MA_FAFF
Character_Stats[14]=10;			//MA_EAFF
Character_Stats[15]=5;			//MA_AAFF

Character_Stats[16]=0;			//MD_WAFF (Equipment+Other)
Character_Stats[17]=30;			//MD_FAFF
Character_Stats[18]=10;			//MD_EAFF
Character_Stats[19]=5;			//MD_AAFF

Character_Stats[20]=0;			//WXP
Character_Stats[21]=99;			//FXP
Character_Stats[22]=50;			//EXP
Character_Stats[23]=25;			//AXP

Character_Stats[24]=0;		//Column Preferance
Character_Stats[25]=100;		//Current HP

Character_Spells[0]=3001;
Character_Spells[1]=2001;
Character_Spells[2]=0;
Character_Spells[3]=0;
Character_Spells[4]=0;
Character_Spells[5]=0;
Character_Spells[6]=0;
Character_Spells[7]=0;
Character_Spells[8]=0;
Character_Spells[9]=0;
Character_Spells[10]=0;
Character_Spells[11]=0;
Character_Spells[12]=0;
Character_Spells[13]=0;
Character_Spells[14]=0;
Character_Spells[15]=0;
Character_Spells[16]=0;
Character_Spells[17]=0;

switch (argument1){

case 0: return Character_Stats[argument0];
break;
case 1: return Character_Spells[argument0];
break;
}