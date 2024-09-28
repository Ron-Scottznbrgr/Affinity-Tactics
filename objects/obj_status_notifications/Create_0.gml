status_text="";
start=false;
obj_step=0;
obj_stop_proceed=true;
drawing=true;
number_alpha=0;
//y+=60;
target_y=y-30;
text_timer=(btn_Magic.text_delay*room_speed);
//text_timer=5*room_speed;
show_debug_message("My Delay is: "+string(text_timer))
fade_away=false;
depth=-10



	draw_set_color(c_white);
draw_set_font(fnt_battle);

//show_debug_message(damage)