if (jump==0){
y=lerp(y,target_y-75,0.065);
}
else if (jump==1){
y=lerp(y,target_y-50,0.065);
}


if (y<target_y-70)
{
	jump=1;
	}

if (y>target_y-55){
	jump=0;
	}
