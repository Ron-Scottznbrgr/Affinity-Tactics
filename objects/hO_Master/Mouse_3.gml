if (mouse_hovering==1){

if (global.target_type<1){
image_xscale = 1.4;
image_yscale = 1.4;




	global.gHp = char_data[25];
global.gFireAff = char_data[8];
global.gAirAff = char_data[11];
global.gWaterAff = char_data[10];
global.gEarthAff = char_data[9];
global.gName = char_data[0];
global.gHpMax = char_data[4];
	instance_create_layer(x + 0, y + 0, "Instances", Stats_Popup);
	}
}
	
	
	with(Stats_Popup) {
	stat_hp_current = global.gHp;
	stat_f_aff = global.gFireAff;
	stat_w_aff = global.gWaterAff;
	stat_e_aff = global.gEarthAff;
	stat_a_aff = global.gAirAff;
	stat_name = global.gName;
	stat_hp_max = global.gHpMax;



}


