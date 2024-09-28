
if (text_timer>1)
{
	text_timer-=1;
}
else
{
start=true;	
}



if (number_alpha<1 && fade_away==false && start== true)
{
number_alpha=lerp(number_alpha,1,0.05);	
y=lerp(y,target_y,0.025);	
}

if (y<=target_y+2&&fade_away==false && start==true)
{
fade_away=true;	
target_y+=30
}

if (fade_away && start==true)
{
number_alpha=lerp(number_alpha,0,0.05);	
y=lerp(y,target_y,0.05);	

if (y>=target_y-2 && start==true)
{
instance_destroy();	
}
}





/*
if (obj_step==0 && obj_stop_proceed)
{
	obj_step_proceed=false;
	alarm[0] = room_speed * 3;
}
*/
/*
if (obj_step==1 && obj_stop_proceed)
{
	obj_step_proceed=false;
	alarm[1] = room_speed * 3;
}

if (obj_step==2 && obj_stop_proceed)
{
	obj_step_proceed=false;
	alarm[2] = room_speed * 0.5;
}
*/