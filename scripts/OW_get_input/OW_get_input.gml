/// @desc get Input
rkey =max (keyboard_check(vk_right), keyboard_check(ord("D")), 0);
lkey =max (keyboard_check(vk_left), keyboard_check(ord("A")), 0);
dkey =max (keyboard_check(vk_down), keyboard_check(ord("S")), 0);
ukey =max (keyboard_check(vk_up), keyboard_check(ord("W")), 0);
actionKey=keyboard_check_pressed(vk_space);

xaxis = (rkey-lkey);
yaxis = (dkey-ukey);

if (gamepad_is_connected(0)){
	rkey=gamepad_button_check(0, gp_padr);
	lkey=gamepad_button_check(0, gp_padl);
	dkey=gamepad_button_check(0, gp_padd);
	ukey=gamepad_button_check(0, gp_padu);
	
	xaxis = max(gamepad_axis_value(0,gp_axislh),gamepad_axis_value(0,gp_axisrh),rkey-lkey, 0);
	yaxis = max(gamepad_axis_value(0,gp_axislv),gamepad_axis_value(0,gp_axisrv),dkey-ukey, 0);
}


	