/// @description Movement
// You can write your code in this editor
if (mouse_check_button(mb_left))
    {
		move_x = mouse_x;
		move_y = mouse_y;
	}
if (distance_to_point(move_x,move_y)) > 0.5
	{
		move_towards_point(move_x,move_y,10);
	}
	else if (distance_to_point(move_x,move_y)) = 0
	{
		speed = 0;
	} else {
		speed= 0;
	}
	
	
/*
if(place_meeting(x,y,objEnemy){
	health - objEnemy.damage;
}*/