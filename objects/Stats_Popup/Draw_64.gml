/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6905FBF8
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l6905FBF8_0=($FF000000 >> 24);
draw_set_alpha(l6905FBF8_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 2CA697A8
/// @DnDArgument : "x1" "-25"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-55"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "25"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "-60"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "value" "round((stat_hp_current/stat_hp_max)*100)"
/// @DnDArgument : "backcol" "$FF020202"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF00D8FF"
/// @DnDArgument : "maxcol" "$FF00D8FF"
draw_healthbar(x + -25, y + -55, x + 25, y + -60, round((stat_hp_current/stat_hp_max)*100), $FF020202 & $FFFFFF, $FF00D8FF & $FFFFFF, $FF00D8FF & $FFFFFF, 0, (($FF020202>>24) != 0), (($FF000000>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 5997426B
/// @DnDArgument : "x1" "-25"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-111"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "-16.5"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "-61"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "direction" "3"
/// @DnDArgument : "value" "stat_f_aff"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF0000FF"
draw_healthbar(x + -25, y + -111, x + -16.5, y + -61, stat_f_aff, $FF000000 & $FFFFFF, $FF0000FF & $FFFFFF, $FF0000FF & $FFFFFF, 3, (($FF000000>>24) != 0), (($FF000000>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 0CBEDEC7
/// @DnDArgument : "x1" "-11.5"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-111"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "-3"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "-61"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "direction" "3"
/// @DnDArgument : "value" "stat_e_aff"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF17AD00"
/// @DnDArgument : "maxcol" "$FF17AD00"
draw_healthbar(x + -11.5, y + -111, x + -3, y + -61, stat_e_aff, $FF000000 & $FFFFFF, $FF17AD00 & $FFFFFF, $FF17AD00 & $FFFFFF, 3, (($FF000000>>24) != 0), (($FF000000>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 14938986
/// @DnDArgument : "x1" "3"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-111"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "11.5"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "-61"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "direction" "3"
/// @DnDArgument : "value" "stat_w_aff"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FFFF7200"
/// @DnDArgument : "maxcol" "$FFFF7200"
draw_healthbar(x + 3, y + -111, x + 11.5, y + -61, stat_w_aff, $FF000000 & $FFFFFF, $FFFF7200 & $FFFFFF, $FFFF7200 & $FFFFFF, 3, (($FF000000>>24) != 0), (($FF000000>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 798C0D9C
/// @DnDArgument : "x1" "16.5"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-111"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "25"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "-61"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "direction" "3"
/// @DnDArgument : "value" "stat_a_aff"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FFFF007B"
/// @DnDArgument : "maxcol" "$FFFF007B"
draw_healthbar(x + 16.5, y + -111, x + 25, y + -61, stat_a_aff, $FF000000 & $FFFFFF, $FFFF007B & $FFFFFF, $FFFF007B & $FFFFFF, 3, (($FF000000>>24) != 0), (($FF000000>>24) != 0));

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2810A7FA
/// @DnDArgument : "code" "if ds_grid_value_exists(global.turnOrder, 0, 0, 2, battleController.numofChars, stat_name)$(13_10)   {$(13_10)   var xpos = ds_grid_value_x(global.turnOrder, 0, 0, 2,battleController.numofChars, stat_name);$(13_10)   var ypos = ds_grid_value_y(global.turnOrder, 0, 0, 2, battleController.numofChars, stat_name);$(13_10)   //show_debug_message(xpos);$(13_10)   }$(13_10)   else {$(13_10)	var xpos = 100;$(13_10)	var ypos = 100;$(13_10)   }$(13_10)   "
if ds_grid_value_exists(global.turnOrder, 0, 0, 2, battleController.numofChars, stat_name)
   {
   var xpos = ds_grid_value_x(global.turnOrder, 0, 0, 2,battleController.numofChars, stat_name);
   var ypos = ds_grid_value_y(global.turnOrder, 0, 0, 2, battleController.numofChars, stat_name);
   //show_debug_message(xpos);
   }
   else {
	var xpos = 100;
	var ypos = 100;
   }

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 11BBF8AD
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 53C2D410
/// @DnDArgument : "font" "fnt_large"
/// @DnDSaveInfo : "font" "b14a4df4-f26f-4b47-917b-8b4461f7e3a1"
draw_set_font(fnt_large);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 16C1B2E9
/// @DnDArgument : "x" "(ypos*100)+100"
/// @DnDArgument : "y" "160"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "stat_name"
draw_text((ypos*100)+100, 160,  + string(stat_name));

/// @DnDAction : YoYo Games.Drawing.Draw_Gradient_Ellipse
/// @DnDVersion : 1
/// @DnDHash : 142EF3B4
/// @DnDDisabled : 1
/// @DnDArgument : "x1" "(ypos*100)+50"
/// @DnDArgument : "y1" "50"
/// @DnDArgument : "x2" "(ypos*100)+150"
/// @DnDArgument : "y2" "150"
/// @DnDArgument : "col2" "$FFFF2802"
/// @DnDArgument : "fill" "1"


/// @DnDAction : YoYo Games.Drawing.Draw_Gradient_Ellipse
/// @DnDVersion : 1
/// @DnDHash : 4211EDD8
/// @DnDDisabled : 1
/// @DnDArgument : "x1" "(ypos*100)+50"
/// @DnDArgument : "y1" "50"
/// @DnDArgument : "x2" "(ypos*100)+150"
/// @DnDArgument : "y2" "150"
/// @DnDArgument : "col2" "$FF0000FF"
/// @DnDArgument : "fill" "1"


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 542A645F
/// @DnDArgument : "code" "if (stat_name == obj_OW_Player.H_Fire[0] || stat_name == obj_OW_Player.H_Earth[0] || stat_name == obj_OW_Player.H_Water[0] || stat_name ==obj_OW_Player.H_Air[0])$(13_10){$(13_10)draw_ellipse_colour((ypos*100)+50, 50, (ypos*100)+150, 150, $FFFFFF & $FFFFFF, $FFFF2802 & $FFFFFF, 0);$(13_10)}$(13_10)else$(13_10){$(13_10)	draw_ellipse_colour((ypos*100)+50, 50, (ypos*100)+150, 150, $FFFFFF & $FFFFFF, $FF0000FF & $FFFFFF, 0);$(13_10)}$(13_10)$(13_10)for(var xx = 0; xx < battleController.numofChars; xx += 1) {$(13_10)var newsprite=ds_grid_get(global.turnOrder,0,xx);	$(13_10)draw_sprite(newsprite,0,100+(100*xx),100);$(13_10)}$(13_10)$(13_10)"
if (stat_name == obj_OW_Player.H_Fire[0] || stat_name == obj_OW_Player.H_Earth[0] || stat_name == obj_OW_Player.H_Water[0] || stat_name ==obj_OW_Player.H_Air[0])
{
draw_ellipse_colour((ypos*100)+50, 50, (ypos*100)+150, 150, $FFFFFF & $FFFFFF, $FFFF2802 & $FFFFFF, 0);
}
else
{
	draw_ellipse_colour((ypos*100)+50, 50, (ypos*100)+150, 150, $FFFFFF & $FFFFFF, $FF0000FF & $FFFFFF, 0);
}

for(var xx = 0; xx < battleController.numofChars; xx += 1) {
var newsprite=ds_grid_get(global.turnOrder,0,xx);	
draw_sprite(newsprite,0,100+(100*xx),100);
}