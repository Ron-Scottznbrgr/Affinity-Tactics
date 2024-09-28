//char_Spell_List=[];
//char_Spell_List = ds_grid_create(array_length_1d(obj_OW_Player.H_Fire_Spells),array_length_1d(obj_OW_Player.Spell_Array_Length))
char_Spell_List = ds_grid_create(18,btn_Magic.Spell_Components+1);
if ds_exists(char_Spell_List, ds_type_grid)
{
//show_debug_message("THE GRID FUCKING EXISTS")	
}
ds_grid_set_region(char_Spell_List, 0, 0, 18, btn_Magic.Spell_Components+1, 0);
spell_count=0;
text_delay=0.5;
//ds_grid_set(char_Spell_List, 0, 0, "Dicks");

//18 wide, 7 tall
var setter="";

//char_Spell_List = array_create(18,7);


//char_Spell_List[18,7]="Desc";

if(!selected){
	btn_Single_Hex.visible=false;
	btn_Double_Hex.visible=false;
	btn_Triple_Hex.visible=false;
	btn_Quad_Hex.visible=false;
	
audio_play_sound(snd_menu_open,1,0);
	selected=true;



//to be set by list later....







//global.target_type = 99;
//	global.target_rotation=0;
	
	
	//Battle_Targetting();
	var charID = ds_grid_get(global.turnOrder,3,0)
	//show_debug_message("CharID:"+string(charID))
	with (obj_char){
		
	if (id == charID)
	{
	//message[0]=(""+Battle_Spell_List(char_spell[0])+"\n"+Battle_Spell_List(char_spell[1])+"\n"+Battle_Spell_List(char_spell[2])+"\n"+Battle_Spell_List(char_spell[3])+"\n"+Battle_Spell_List(char_spell[4])+"\n"+Battle_Spell_List(char_spell[5])+"\n"+Battle_Spell_List(char_spell[6])+"\n"+Battle_Spell_List(char_spell[7])+"\n"+Battle_Spell_List(char_spell[8])+"\n"+Battle_Spell_List(char_spell[9])+"\n"+Battle_Spell_List(char_spell[10])+"\n"+Battle_Spell_List(char_spell[11])+"\n"+Battle_Spell_List(char_spell[12])+"\n"+Battle_Spell_List(char_spell[13])+"\n"+Battle_Spell_List(char_spell[14])+"\n"+Battle_Spell_List(char_spell[15])+"\n"+Battle_Spell_List(char_spell[16])+"\n"+Battle_Spell_List(char_spell[17])+"\n");
btn_Magic.casting_Char = self;
//show_debug_message("\\\\\\\\\\\\\\\\"+string(btn_Magic.casting_Char.char_data[0]));
	//show_debug_message("Matched CharID of:"+string(charID)+" With: "+string(char_data[0]))	
	
	
	//	show_debug_message("Message = "+string(Battle_Spell_List(char_spell[0])));
	//		show_debug_message("Message = "+string(Battle_Spell_List(char_spell[0])));
			//message[0]=(""+string(Battle_Spell_List(obj_char.char_spell[0])));
	//char_Spell_List[0]=""+string(Battle_Spell_List(self.char_spell[0]))+"\n"+string(Battle_Spell_List(self.char_spell[1]))+"\n"+string(Battle_Spell_List(self.char_spell[2]))+"\n"+string(Battle_Spell_List(self.char_spell[3]))+"\n"+string(Battle_Spell_List(self.char_spell[4]))+"\n"+string(Battle_Spell_List(self.char_spell[5]))+"\n"+string(Battle_Spell_List(self.char_spell[6]))+"\n"+string(Battle_Spell_List(self.char_spell[7]))+"\n"+string(Battle_Spell_List(self.char_spell[8]))+"\n"+string(Battle_Spell_List(self.char_spell[9]))+"\n"+string(Battle_Spell_List(self.char_spell[10]))+"\n"+string(Battle_Spell_List(self.char_spell[11]))+"\n"+string(Battle_Spell_List(self.char_spell[12]))+"\n"+string(Battle_Spell_List(self.char_spell[13]))+"\n"+string(Battle_Spell_List(self.char_spell[14]))+"\n"+string(Battle_Spell_List(self.char_spell[15]))+"\n"+string(Battle_Spell_List(self.char_spell[16]))+"\n"+string(Battle_Spell_List(self.char_spell[17]))+"\n";
	
	/*show_debug_message(self.char_spell[0]);
	show_debug_message(Battle_Spell_List(self.char_spell[0],0));
	show_debug_message(Battle_Spell_List(self.char_spell[0],1));
	show_debug_message(Battle_Spell_List(self.char_spell[0],2));
	show_debug_message(Battle_Spell_List(self.char_spell[0],3));
	show_debug_message(Battle_Spell_List(self.char_spell[0],4));
	show_debug_message(Battle_Spell_List(self.char_spell[0],5));
	show_debug_message(Battle_Spell_List(self.char_spell[0],6));
	show_debug_message(Battle_Spell_List(self.char_spell[0],7));
	*/
	for (var gS = 0; gS < 18; gS++){
		for (var gSi = 0; gSi < btn_Magic.Spell_Components+1; gSi++){
	//		show_debug_message(string(gS)+"  |||  "+string(gSi))
			setter = Battle_Spell_List(self.char_spell[gS],gSi);
			
			show_debug_message(string(gS)+":    "+string(gSi)+":    "+string(setter))
	ds_grid_set(btn_Magic.char_Spell_List, gS, gSi, setter);
	//char_Spell_List[gS,gSi]=""+string(Battle_Spell_List(self.char_spell[gSi]));
	//show_debug_message("discks");
	}
	}
	//show_debug_message("Not "+string(char_data[0]))
	}
	//show_debug_message("Characte Selected = "+string(character_trying_to_move.char_data[0]))
	}
	
	/*
	with (hex_tile)
	{
	if ((array_x==character_trying_to_move.char_tile_x)&&(array_y==character_trying_to_move.char_tile_y)){
	//	show_debug_message("Moving From Hex id:"+string(id)+":   :"+string(array_x)+"/"+string(array_y))
		
		Battle_Targetting(id)
		break;
	}
	}
	*/
	
	//Battle_Targetting()
	
if(!instance_exists(obj_battle_spell_list_box))
{
var checker="";

message[0]="";
message[1]="";
message[2]="";
message[3]="";
message[4]="";
message[5]="";
message[6]="";
message[7]="";
for (var rS = 0; rS < array_length_1d(obj_OW_Player.H_Fire_Spells); rS++){
checker=ds_grid_get(char_Spell_List,rS,0);
//show_debug_message("dicks"+string(ds_grid_get(char_Spell_List,rS,0)));
if (checker!="Null")
{
spell_count+=1;
message[0]+=string(ds_grid_get(char_Spell_List,rS,0))+"\n";
message[1]+=string(ds_grid_get(char_Spell_List,rS,1))+"\n";
message[2]+=string(ds_grid_get(char_Spell_List,rS,2))+"\n";
message[3]+=string(ds_grid_get(char_Spell_List,rS,3))+"\n";
message[4]+=string(ds_grid_get(char_Spell_List,rS,4))+"\n";
message[5]+=string(ds_grid_get(char_Spell_List,rS,5))+"\n";
message[6]=string(ds_grid_get(char_Spell_List,0,6))+"\n";   ///Spell Description
message[7]+=string(ds_grid_get(char_Spell_List,rS,7))+"\n";
}
}


//message[1]=string(Battle_Spell_List(obj_char.char_spell[1]));
//var box = instance_create_depth(x,y,0,obj_battle_spell_list_box);
var box = instance_create_layer(x,y,"GUI_Instances",obj_battle_spell_list_box);
audio_play_sound(snd_Text, 10, false);//play on space not each char
for (var imsg = 0; imsg < array_length_1d(message); imsg++){
	box.message[imsg] = message[imsg];
}
box.message_end = array_length_1d(message)-1;
box.message_length=string_length(box.message[box.message_current]);

}
	
	
	
	
	
	
	
	}

else{
selected=false;
btn_Single_Hex.visible=true;
	btn_Double_Hex.visible=true;
	btn_Triple_Hex.visible=true;
	btn_Quad_Hex.visible=true;
global.target_type=0;
global.target_rotation=0;
btn_Team_Select.selected=false;
if(instance_exists(obj_battle_spell_list_box))
{
	instance_destroy(obj_battle_cursor_right);
instance_destroy(obj_battle_spell_list_box);
ds_grid_destroy(char_Spell_List);
audio_play_sound(snd_menu_cancel,1,0);
}
Battle_Wipe_Hexes()
Battle_Fade_Hexes()
//global.target_rotation=0;
}