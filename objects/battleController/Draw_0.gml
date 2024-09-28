/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 19917BD1
/// @DnDArgument : "code" "draw_set_color(c_white);$(13_10)draw_set_alpha(1);$(13_10)for(var xx = 0; xx < numofChars; xx += 1) {$(13_10)var newsprite=ds_grid_get(global.turnOrder,0,xx);	$(13_10)draw_sprite(newsprite,0,100+(100*xx),100);$(13_10)}"
draw_set_color(c_white);
draw_set_alpha(1);
for(var xx = 0; xx < numofChars; xx += 1) {
var newsprite=ds_grid_get(global.turnOrder,0,xx);	
draw_sprite(newsprite,0,100+(100*xx),100);
}

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 32FB5C15
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l32FB5C15_0=($FF000000 >> 24);
draw_set_alpha(l32FB5C15_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 5E300B92
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 0A50BE70
/// @DnDArgument : "font" "fnt_large"
/// @DnDSaveInfo : "font" "b14a4df4-f26f-4b47-917b-8b4461f7e3a1"
draw_set_font(fnt_large);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 2A9DEABE
/// @DnDArgument : "x" "50"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "xscale" "1.5"
/// @DnDArgument : "yscale" "1.5"
/// @DnDArgument : "caption" ""Turn Order!      Tick #""
/// @DnDArgument : "text" "clockTicks"
draw_text_transformed(50, 10, string("Turn Order!      Tick #") + string(clockTicks), 1.5, 1.5, 0);