///desc draw text box
draw_set_halign(fa_left);
draw_set_color(c_black);
draw_set_alpha(0.8);
draw_roundrect(x1,y1,x1+x2+x2,y2,false);

draw_set_color(c_white);
draw_set_alpha(1);
draw_roundrect(x1,y1,x1+x2+x2,y2,true);

//text
draw_set_font(fnt_large);
draw_text_ext(x1+20,y1+12,message_draw,28,(x1+x2+40));
//^ auto creates a line break
