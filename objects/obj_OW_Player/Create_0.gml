/// @desc Initialize
spd=1;
dir=0;
len=0;
hspd=0;
vspd=0;

state=OW_move_state;

previous_room=rm_main;
time_until_battle=0;
battle_starts_at=0;
enemy_data=[];
Spell_Array_Length=7;

//sprite direction facing
face=0;
#macro RIGHT spr_Ruby_Right;
#macro LEFT spr_Ruby_Left;
#macro UP spr_Ruby_Up;
#macro DOWN spr_Ruby_Down;


////////////////////////////////////////////
//Character Stat Block
////////////////////////////////////////////
//Name//SPRITE//LEVEL//XP//HP//ATK//DEF//SPD//WAFF//FAFF//EAFF//AAFF//
//MA_FAFF//MA_WAFF//MA_EAFF//MA_AAFF//MD_FAFF//MD_WAFF//MD_EAFF//MD_AAFF
//FXP//WXP//EXP//AXP// ---23
//Column Preference 0 = front 2 = back

H_Fire[0]="Azula";		//Name
H_Fire[1]=spr_hero_fire;//Sprite
H_Fire[2]=5;			//LEVEL
H_Fire[3]=50;			//XP

H_Fire[4]=100;			//HP
H_Fire[5]=20;			//ATK
H_Fire[6]=15;			//DEF
H_Fire[7]=300;			//SPD

H_Fire[8]=30;			//FAFF
H_Fire[9]=15;			//EAFF
H_Fire[10]=5;			//WAFF
H_Fire[11]=15;			//AAFF

H_Fire[12]=0;			//MA_FAFF (Equipment+Other)
H_Fire[13]=30;			//MA_EAFF
H_Fire[14]=10;			//MA_WAFF
H_Fire[15]=5;			//MA_AAFF

H_Fire[16]=0;			//MD_FAFF (Equipment+Other)
H_Fire[17]=30;			//MD_EAFF
H_Fire[18]=10;			//MD_WAFF
H_Fire[19]=5;			//MD_AAFF

H_Fire[20]=0;			//WXP
H_Fire[21]=99;			//FXP
H_Fire[22]=50;			//EXP
H_Fire[23]=25;			//AXP

H_Fire[24]=0;			//Column Preference 0 = front 2 = back
H_Fire[25]=100;			//Current HP

H_Fire_Spells[0]=1001;
H_Fire_Spells[1]=0;
H_Fire_Spells[2]=0;
H_Fire_Spells[3]=0;
H_Fire_Spells[4]=0;
H_Fire_Spells[5]=0;
H_Fire_Spells[6]=0;
H_Fire_Spells[7]=0;
H_Fire_Spells[8]=0;
H_Fire_Spells[9]=0;
H_Fire_Spells[10]=0;
H_Fire_Spells[11]=0;
H_Fire_Spells[12]=0;
H_Fire_Spells[13]=0;
H_Fire_Spells[14]=0;
H_Fire_Spells[15]=0;
H_Fire_Spells[16]=0;
H_Fire_Spells[17]=0;

H_Water[0]="Kiara";		//Name
H_Water[1]=spr_hero_water;//Sprite
H_Water[2]=5;			//LEVEL
H_Water[3]=50;			//XP

H_Water[4]=100;			//HP
H_Water[5]=20;			//ATK
H_Water[6]=15;			//DEF
H_Water[7]=200;			//SPD

H_Water[8]=05;			//FAFF
H_Water[9]=15;			//EAFF
H_Water[10]=30;			//WAFF
H_Water[11]=15;			//AAFF

H_Water[12]=0;			//MA_FAFF (Equipment+Other)
H_Water[13]=30;			//MA_EAFF
H_Water[14]=10;			//MA_WAFF
H_Water[15]=5;			//MA_AAFF

H_Water[16]=0;			//MD_FAFF (Equipment+Other)
H_Water[17]=30;			//MD_EAFF
H_Water[18]=10;			//MD_WAFF
H_Water[19]=5;			//MD_AAFF

H_Water[20]=0;			//WXP
H_Water[21]=99;			//FXP
H_Water[22]=50;			//EXP
H_Water[23]=25;			//AXP

H_Water[24]=0;			//Column Preference 0 = front 2 = back
H_Water[25]=100;			//Current HP

H_Water_Spells[0]=3001;
H_Water_Spells[1]=0;
H_Water_Spells[2]=0;
H_Water_Spells[3]=0;
H_Water_Spells[4]=0;
H_Water_Spells[5]=0;
H_Water_Spells[6]=0;
H_Water_Spells[7]=0;
H_Water_Spells[8]=0;
H_Water_Spells[9]=0;
H_Water_Spells[10]=0;
H_Water_Spells[11]=0;
H_Water_Spells[12]=0;
H_Water_Spells[13]=0;
H_Water_Spells[14]=0;
H_Water_Spells[15]=0;
H_Water_Spells[16]=0;
H_Water_Spells[17]=0;


H_Earth[0]="Boulder";		//Name
H_Earth[1]=spr_hero_earth;//Sprite
H_Earth[2]=5;			//LEVEL
H_Earth[3]=50;			//XP

H_Earth[4]=100;			//HP
H_Earth[5]=20;			//ATK
H_Earth[6]=15;			//DEF
H_Earth[7]=100;			//SPD

H_Earth[8]=15;			//FAFF
H_Earth[9]=30;			//EAFF
H_Earth[10]=15;			//WAFF
H_Earth[11]=5;			//AAFF

H_Earth[12]=0;			//MA_FAFF (Equipment+Other)
H_Earth[13]=30;			//MA_EAFF
H_Earth[14]=10;			//MA_WAFF
H_Earth[15]=5;			//MA_AAFF

H_Earth[16]=0;			//MD_FAFF (Equipment+Other)
H_Earth[17]=30;			//MD_EAFF
H_Earth[18]=10;			//MD_WAFF
H_Earth[19]=5;			//MD_AAFF

H_Earth[20]=0;			//WXP
H_Earth[21]=99;			//FXP
H_Earth[22]=50;			//EXP
H_Earth[23]=25;			//AXP

H_Earth[24]=0;			//Column Preference 0 = front 2 = back
H_Earth[25]=100;			//Current HP

H_Earth_Spells[0]=2001;
H_Earth_Spells[1]=0;
H_Earth_Spells[2]=0;
H_Earth_Spells[3]=0;
H_Earth_Spells[4]=0;
H_Earth_Spells[5]=0;
H_Earth_Spells[6]=0;
H_Earth_Spells[7]=0;
H_Earth_Spells[8]=0;
H_Earth_Spells[9]=0;
H_Earth_Spells[10]=0;
H_Earth_Spells[11]=0;
H_Earth_Spells[12]=0;
H_Earth_Spells[13]=0;
H_Earth_Spells[14]=0;
H_Earth_Spells[15]=0;
H_Earth_Spells[16]=0;
H_Earth_Spells[17]=0;

H_Air[0]="Aang";		//Name
H_Air[1]=spr_hero_air;//Sprite
H_Air[2]=5;			//LEVEL
H_Air[3]=50;			//XP

H_Air[4]=100;			//HP
H_Air[5]=20;			//ATK
H_Air[6]=15;			//DEF
H_Air[7]=400;			//SPD

H_Air[8]=15;			//FAFF
H_Air[9]=05;			//EAFF
H_Air[10]=15;			//WAFF
H_Air[11]=30;			//AAFF

H_Air[12]=0;			//MA_FAFF (Equipment+Other)
H_Air[13]=30;			//MA_EAFF
H_Air[14]=10;			//MA_WAFF
H_Air[15]=5;			//MA_AAFF

H_Air[16]=0;			//MD_FAFF (Equipment+Other)
H_Air[17]=30;			//MD_EAFF
H_Air[18]=10;			//MD_WAFF
H_Air[19]=5;			//MD_AAFF

H_Air[20]=0;			//WXP
H_Air[21]=99;			//FXP
H_Air[22]=50;			//EXP
H_Air[23]=25;			//AXP

H_Air[24]=0;			//Column Preference 0 = front 2 = back
H_Air[25]=100;			//Current HP


H_Air_Spells[0]=2003;
H_Air_Spells[1]=2003;
H_Air_Spells[2]=2003;
H_Air_Spells[3]=2003;
H_Air_Spells[4]=2003;
H_Air_Spells[5]=2003;
H_Air_Spells[6]=2003;
H_Air_Spells[7]=2003;
H_Air_Spells[8]=2003;
H_Air_Spells[9]=2003;
H_Air_Spells[10]=2003;
H_Air_Spells[11]=2003;
H_Air_Spells[12]=2003;
H_Air_Spells[13]=2003;
H_Air_Spells[14]=2003;
H_Air_Spells[15]=2003;
H_Air_Spells[16]=2003;
H_Air_Spells[17]=2003;


/*H_Air_Spells[0]=1002;
H_Air_Spells[1]=2002;
H_Air_Spells[2]=3002;
H_Air_Spells[3]=4002;
H_Air_Spells[4]=4001;
H_Air_Spells[5]=1001;
H_Air_Spells[6]=2001;
H_Air_Spells[7]=3001;
H_Air_Spells[8]=4001;
H_Air_Spells[9]=1001;
H_Air_Spells[10]=2001;
H_Air_Spells[11]=3001;
H_Air_Spells[12]=1001;
H_Air_Spells[13]=3001;
H_Air_Spells[14]=4001;
H_Air_Spells[15]=2001;
H_Air_Spells[16]=1001;
H_Air_Spells[17]=4001;*/