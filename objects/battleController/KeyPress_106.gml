if (instance_exists(obj_OW_Player)){
target=obj_OW_Player.previous_room;
}
else
{
target=rm_grass_0;
}

room_fadeout(target,c_black,0.05,xx,yy);

