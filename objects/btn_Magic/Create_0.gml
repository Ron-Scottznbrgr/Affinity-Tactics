selected=false;
flashAlpha=0;
flashColor=c_red;
character_moving_ID=0;
message[0]="Magic Button Initial Text";
message[1]="";
//message[0]=" Spell 1 \n Spell 2 \n Spell 3 \n Spell 4 \n Spell 5 \n Spell 6 \n Spell 7 \n Spell 8 \n Spell 9 \n Spell 10 \n Spell 11 \n Spell 12 \n Spell 13 \n Spell 14 \n Spell 15 \n Spell 16 \n Spell 17 \n Spell 18";
image_speed=0;
image_index = 1;

Spell_Components=35;
text_delay=0.5;



hex_array_X=[];
hex_array_Y=[];
char_array=[];
spell_range=0;
spell_fired=false;
spell_total_damage_dealt=0;

	spell_range	= 0 //Range
	spell_element= 0 //Affinity
	spell_sub= 0 //Sub Element
	spell_damage_type=0; // Direct Damage (For Now)
	spell_deals_damage=false;
	spell_causes_status=false;
	statuses=[];
	casting_Char=0;
	spell_drains_damage=false;
	spell_drain_percent=0;
	spell_heals=false;
	spell_heals_percent=false
	spell_damages_percent=0;
	spell_damage_or_health_percent=0;