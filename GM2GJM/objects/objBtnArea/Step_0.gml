/// @description Insert description here

if (objLevelManager.currentLevel = btnId && objLevelManager.enemyCounter == 0)
{
	if (position_meeting(mouse_x, mouse_y, id))
	{
		var mb_pressed = mouse_check_button_pressed(mb_left);
		if (mb_pressed)
		{
			objLevelManager.currentLevel++;
			objLevelManager.levelType = levelType;
			objMenu.pause = false;
			// visuals
			final_state = true;
		}
		// visuals
		image_index = 1;
	}
	else
	{
		// visuals
		image_index = 0;
	}
}
else if(image_index != 3)
{
	image_index = 2;
}

if (final_state != undefined) image_index = 3;