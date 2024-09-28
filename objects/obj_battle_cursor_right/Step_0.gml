if (jump==0){
x=lerp(x,target_x-20,0.035);
}
else if (jump==1){
x=lerp(x,target_x+20,0.035);
}


if (x<target_x-10)
{
	jump=1;
	}

if (x>target_x+10){
	jump=0;
	}
