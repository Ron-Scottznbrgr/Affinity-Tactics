should_I_advance_turns=false;
numofChars = (4+array_length_1d(obj_OW_Player.enemy_data)); //Later this will be flexible
//show_message(numofChars);
global.turnOrder = ds_grid_create (5,numofChars);
global.endTurn=false;
clockTicks = 0;



instance_create_layer(x + 0, y + 0, "Instances", grid_manager);
instance_create_layer(x + 0, y + 0, "Instances", character_generator);
event_perform(ev_alarm,0);

//Gui
instance_create_layer(100,200,"Instances",btn_Move);
instance_create_layer(100,260,"Instances",btn_Magic);
instance_create_layer(175,200,"Instances",btn_Team_Select);
instance_create_layer(900,200,"Instances",btn_Single_Hex);
instance_create_layer(900,275,"Instances",btn_Double_Hex);
instance_create_layer(900,350,"Instances",btn_Triple_Hex);
instance_create_layer(900,425,"Instances",btn_Quad_Hex);


if (instance_exists(obj_OW_Player)){
xx=obj_OW_Player.x-4;
yy=obj_OW_Player.y-4;
}
else
{
xx=0;
yy=0;
}

Battle_End_Turn();