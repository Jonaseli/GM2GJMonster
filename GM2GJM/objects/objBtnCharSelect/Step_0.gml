/// @description Insert description here

if (position_meeting(mouse_x, mouse_y, id))
{
	var mb_pressed = mouse_check_button_pressed(mb_left);
	if (mb_pressed)
	{
		objLevelManager.character = character;
		objMenu.mainMenu = false;
	}
	objCharInfo.characterText = infoText;
	// visuals
	image_alpha = 1;
}
else
{
	// visuals
	image_alpha = 0.5;
}