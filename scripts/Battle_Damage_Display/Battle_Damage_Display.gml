/// @ Desc Takes Damage, x,y, creates Number Obj
/// @ arg Damage to Display
/// @ arg Character X
/// @ arg Character Y

var dmgNumber = instance_create_layer(argument1,argument2,"GUI_Instances",obj_damage_number);
dmgNumber.damage=argument0;

audio_play_sound(snd_Text, 10, false);//play on space not each char