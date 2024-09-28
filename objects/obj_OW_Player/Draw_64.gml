/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 27D49250
/// @DnDArgument : "x1" "10"
/// @DnDArgument : "y1" "10"
/// @DnDArgument : "x2" "10+battle_starts_at"
/// @DnDArgument : "y2" "20"
/// @DnDArgument : "value" "(time_until_battle/battle_starts_at)*100"
/// @DnDArgument : "backcol" "$FF4F2300"
/// @DnDArgument : "barcol" "$FF4F2300"
/// @DnDArgument : "mincol" "$FFFFFFFF"
/// @DnDArgument : "maxcol" "$FF6060FF"
draw_healthbar(10, 10, 10+battle_starts_at, 20, (time_until_battle/battle_starts_at)*100, $FF4F2300 & $FFFFFF, $FFFFFFFF & $FFFFFF, $FF6060FF & $FFFFFF, 0, (($FF4F2300>>24) != 0), (($FF4F2300>>24) != 0));