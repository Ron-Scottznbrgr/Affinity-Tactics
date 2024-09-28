if(in_range)
{
image_index=3	
}
if(selectable)
{
	if(the_cursor)
	{
		image_index=1;
	}
	else
	{
	image_index=2;
	}
}
if(false_selectable)
{
image_index=2;	
}
if(false_cursor)
{
image_index=1;	
}
if(!in_range&&!selectable&&!false_cursor&&!false_selectable){
image_index=0;	
}




draw_self();

//flash

//if (flashAlpha>0){
//	shader_set(Highligt_Hex);
	
//	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,
//	flashColor,flashAlpha);
	
//	shader_reset();

//}