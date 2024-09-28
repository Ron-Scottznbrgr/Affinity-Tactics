///@ Desc Takes char data, and calcs damage
///@ arg Casting Character
///@ arg Target Character
///@ arg Spell_Element
///@ arg Sub Element
///@ arg Spell Power
///@ arg Spell_Damage_Type


//Spell_Damage_Calc(casting_Char,self,spell_element,spell_sub,spell_power,spell_damage_type);

var Caster = argument0;
var Target = argument1;
var AFF = argument2;
var subElement=argument3;
var SpellPower=argument4;
var damage_type=argument5;

var casterAFFBonus=1;
var targetAFFBonus=1;

var ATKRatio=10;
var DEFRatio=11;
var POWERRatio=18;
var COMPRESSORRatio=13;

var damage=0;

//Atk
//ATK Fire Aff
//ATK Earth Aff
//ATK Water Aff
//ATK Air Aff
//ATK Mods
//Def
//DEF Fire Aff
//DEF Water Aff
//DEF Earth Aff
//DEF Air Aff
//DEF Mods
//Spell Element.
//Spell Sub Element
//ATK Element Boosts
//DEF Element Boosts


switch(AFF){
case 1:
show_debug_message("Fire Spell      - Caster AFF: "+string(Caster.char_data[8])+".    Target AFF: "+string(Target.char_data[8]))
//=SUM(((C2-25)/100)*2)+1
//=IF(H2<25,1+(1-((((H2-25) / 100) * 2)+1)),IF(AND(H2>=25,H2<=75),1-(((H2-25)/100)*2),IF(H2>75,1+(1-((((H2 - 25)/100)*2)+1)),0)))

casterAFFBonus = ((((Caster.char_data[8]-25)/100)*2)+1)

if (Target.char_data[8]<25)
{
targetAFFBonus=1+(1-((((Target.char_data[8]-25)/100)*2)+1))	
			   
}
if(Target.char_data[8]>=25 && Target.char_data[8]<=75)
{
	targetAFFBonus=1-(((Target.char_data[8]-25)/100)*2)
}
if(Target.char_data[8]>75)
{
	targetAFFBonus=1+(1-((((Target.char_data[8]-25)/100)*2)+1))
}
break;
	


case 2:
show_debug_message("Earth Spell      - Caster AFF: "+string(Caster.char_data[9])+".    Target AFF: "+string(Target.char_data[9]))

casterAFFBonus = ((((Caster.char_data[9]-25)/100)*2)+1)

if (Target.char_data[9]<25)
{
targetAFFBonus=1+(1-((((Target.char_data[9]-25)/100)*2)+1))	
}
if(Target.char_data[9]>=25 && Target.char_data[9]<=75)
{
	targetAFFBonus=1-(((Target.char_data[9]-25)/100)*2)
}
if(Target.char_data[9]>75)
{
	targetAFFBonus=1+(1-((((Target.char_data[9]-25)/100)*2)+1))
}
break;


case 3:
show_debug_message("Water Spell      - Caster AFF: "+string(Caster.char_data[10])+".    Target AFF: "+string(Target.char_data[10]))

casterAFFBonus = ((((Caster.char_data[10]-25)/100)*2)+1)

if (Target.char_data[10]<25)
{
targetAFFBonus=1+(1-((((Target.char_data[10]-25)/100)*2)+1))	
}
if(Target.char_data[10]>=25 && Target.char_data[10]<=75)
{
	targetAFFBonus=1-(((Target.char_data[10]-25)/100)*2)
}
if(Target.char_data[10]>75)
{
	targetAFFBonus=1+(1-((((Target.char_data[10]-25)/100)*2)+1))
}
break;

case 4:
show_debug_message("Air Spell      - Caster AFF: "+string(Caster.char_data[11])+".    Target AFF: "+string(Target.char_data[11]))

casterAFFBonus = ((((Caster.char_data[11]-25)/100)*2)+1)

if (Target.char_data[11]<25)
{
targetAFFBonus=1+(1-((((Target.char_data[11]-25)/100)*2)+1))	
}
if(Target.char_data[11]>=25 && Target.char_data[11]<=75)
{
	targetAFFBonus=1-(((Target.char_data[11]-25)/100)*2)
}
if(Target.char_data[11]>75)
{
	targetAFFBonus=1+(1-((((Target.char_data[11]-25)/100)*2)+1))
}

break;
	
}

show_debug_message("C-Bonus: "+string(casterAFFBonus)+"    T-Bonus: "+string(targetAFFBonus));

//Damage =((((Caster.ATK*casterAFFBonus)+(Caster.Level*ATKRatio)*(SpellPower+POWERRatio)/COMPRESSORratio)-(Target.DEF+(Target.Level*DEFRatio))))*targetAFFBonus

damage =((((Caster.char_data[5]*casterAFFBonus)+(Caster.char_data[2]*ATKRatio)*(SpellPower+POWERRatio)/COMPRESSORRatio)-(Target.char_data[6]+(Target.char_data[2]*DEFRatio))))*targetAFFBonus
show_debug_message("SPELL DAMAGE against "+string(Target.char_data[0])+" = "+string(damage));
damage=round(damage);
return damage;


/*
char_data[2]=0			//Level

char_data[5]=0;			//ATK
char_data[6]=0;			//DEF

char_data[8]=0;			//WAFF
char_data[9]=0;			//FAFF
char_data[10]=0;		//EAFF
char_data[11]=0;		//AAFF

*/