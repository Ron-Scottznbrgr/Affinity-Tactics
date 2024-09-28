black_opaque=0.60;
blue_opaque=0.70;
highlight_opaque=0.20;
///desc draw text box
draw_set_halign(fa_left);
draw_set_color(c_blue)
draw_set_alpha(blue_opaque);
//draw_roundrect(x1,y1,x1+x2+x2,y2,false);
draw_roundrect(x1,y1,x1+x2+x2+200,y2,false);

draw_set_color(c_black)
draw_set_alpha(black_opaque);
draw_roundrect(x1,y1,x1+x2+x2+200,y2,false);

draw_set_color(c_white);
draw_set_alpha(1);
//draw_roundrect(x1,y1,x1+x2+x2,y2,true);
draw_roundrect(x1,y1,x1+x2+x2+200,y2,true);

//draw_roundrect(x1,y1,x1+x2+x2+200,y2,false);


//Headings Box
draw_set_color(c_blue)
draw_set_alpha(blue_opaque);
draw_roundrect(x1,y1,x1+x2+x2+200,y1-30,false);
draw_set_color(c_black)
draw_set_alpha(black_opaque);
draw_roundrect(x1,y1,x1+x2+x2+200,y1-30,false);
draw_set_color(c_white);
draw_set_alpha(1);
draw_roundrect(x1,y1,x1+x2+x2+200,y1-30,true);//white

//text
draw_set_font(fnt_battle);
draw_text_ext(x1+20,y1-20,"Spell Name",28,(x1+x2+240));
draw_text_ext(x1+220,y1-20,"Power",28,(x1+x2+240));
draw_text_ext(x1+320,y1-20,"Range",28,(x1+x2+240));
draw_text_ext(x1+420,y1-20,"Targetting",28,(x1+x2+240));
draw_text_ext(x1+590,y1-20,"Elements",28,(x1+x2+240));


//Description Box
var desc_size = 120;
draw_set_color(c_blue)
draw_set_alpha(blue_opaque);
draw_roundrect(x1,y2,x1+x2+x2+200,y2+desc_size,false);
draw_set_color(c_black)
draw_set_alpha(black_opaque);
draw_roundrect(x1,y2,x1+x2+x2+200,y2+desc_size,false);
draw_set_color(c_white);
draw_set_alpha(1);
draw_roundrect(x1,y2,x1+x2+x2+200,y2+desc_size,true);//white

draw_text_ext(x1+20,y2+10,"Spell Description:",28,(x1+x2+240));



draw_text_ext(x1+20,y1+12,message[0],28,(x1+x2+240));
draw_text_ext(x1+220,y1+12,message[1],28,(x1+x2+240));
draw_text_ext(x1+320,y1+12,message[2],28,(x1+x2+240));
draw_text_ext(x1+420,y1+12,message[3],28,(x1+x2+240));
draw_text_ext(x1+590,y1+12,message[4],28,(x1+x2+240));
draw_text_ext(x1+610,y1+12,message[5],28,(x1+x2+240));
//show_message("The Cursor is at" +string(obj_battle_cursor_right.cursor_spell_slot))
message[6]=string(ds_grid_get(btn_Magic.char_Spell_List,obj_battle_cursor_right.cursor_spell_slot,6))+"\n";   ///Spell Description
draw_text_ext(x1+20,y2+35,message[6],20,(x1+x2+240));
//^ auto creates a line break


//Cursor Highlight
draw_set_color(c_white);
draw_set_alpha(highlight_opaque);
draw_roundrect(x1,obj_battle_cursor_right.y-4,x1+x2+x2+200,obj_battle_cursor_right.y+20,false);
draw_set_alpha(1);