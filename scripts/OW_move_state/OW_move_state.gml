//move_state
//get Direction
dir=point_direction(0,0,xaxis,yaxis);

//Get Length
if (xaxis==0) && (yaxis == 0){
	len = 0;
}else{
	len=spd;
	OW_get_face();
	}
	
//get spd variables
hspd=lengthdir_x(len,dir);
vspd=lengthdir_y(len,dir);

//Horizontal Collision
if (place_meeting(x+hspd,y,obj_OW_wall)){
	while(!place_meeting(x+sign(hspd),y,obj_OW_wall)){
		x+=sign(hspd);
	}
	hspd=0;
}
x+=hspd;

//Verticle Collision
if (place_meeting(x,y+vspd,obj_OW_wall)){
	while(!place_meeting(x,y+sign(vspd),obj_OW_wall)){
		y+=sign(vspd);
	}
	vspd=0;
}
y+=vspd;

//if (obj_OW_Player ev_collision

if (len==0){
	image_index=0;
}

//Get Direction
switch(face){
case 0:	sprite_index=RIGHT;
break;
case 1:
sprite_index=UP;
break;
case 2:
sprite_index=LEFT;
break;
case 3:
sprite_index=DOWN;
break;
}
