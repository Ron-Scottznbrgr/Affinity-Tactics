if (drawing)
{
	
draw_set_alpha(number_alpha);
//text

draw_set_halign(fa_center);
draw_set_color(c_green);
draw_text_ext(x,y-50,"+"+string(heal),28,100);
//draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_alpha(1);
}