if (global.target_type<1){
image_xscale = 1.4;
image_yscale = 1.4;
mouse_hovering=1;

global.gHp=0;
global.gHpMax=0;
global.gFireAff=0;
global.gEarthAff=0;
global.gAirAff=0;
global.gWaterAff=0;
global.gName="";
//show_debug_message(char_hp)

global.gHp += char_data[25];
global.gFireAff += char_data[8];
global.gAirAff += char_data[11];
global.gWaterAff += char_data[10];
global.gEarthAff += char_data[9];
global.gName += char_data[0];
global.gHpMax = char_data[4];

instance_create_layer(x + 0, y + 0, "Instances", Stats_Popup);
//show_debug_message("Spells Equipped----------------");
for (var xx = 0; xx < array_length_1d(obj_OW_Player.H_Fire_Spells); xx += 1) {

if (char_spell[xx]==0)
{
	//show_debug_message("Empty Slot");
}
else{
//show_debug_message((char_spell[xx]));
//show_debug_message(Battle_Spell_List(char_spell[xx]));
}
}

with(Stats_Popup) {
	stat_hp_current += global.gHp;
	stat_f_aff += global.gFireAff;
	stat_w_aff += global.gWaterAff;
	stat_e_aff += global.gEarthAff;
	stat_a_aff += global.gAirAff;
	stat_name += global.gName;
	stat_hp_max += global.gHpMax;
}
}