/// @description Insert description here

if (position_meeting(mouse_x, mouse_y, id))
{
var mb_pressed = mouse_check_button_pressed(mb_left);
if (mb_pressed)
{
	global.dexterity += 1;
}
	// visuals
	image_index = 1;
} else
{
	// visuals
	image_index = 0;
}
