if (room==rm_battle){
visible=false;
time_until_battle=0;
}
else
{
	visible=true;
	randomize();
	battle_starts_at = random_range(100, 150);
	show_debug_message(battle_starts_at)
}