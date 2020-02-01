/// @description Movement
// You can write your code in this editor
/*
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
	*/
	remainingHP = baseHealth;
	remainingHP = remainingHP + vitality;
	baseDmg = strength; 
	baseAttackSpeed = dexterity;

	W = keyboard_check(ord("W"));
	S = keyboard_check(ord("S"));
	A = keyboard_check(ord("A"));
	D = keyboard_check(ord("D"));
	var spd = 5;
	var hMove = (D - A)*spd;
	var vMove = (S - W)*spd;

/*
	if(hMove){
		x += hMove;
		if(place_meeting(x, y, objWall)){
			x -=hMove;
		} else {
			x +=hMove;
		}
	}
	*/

	x += hMove;
	y += vMove;
	
	if(remainingHP = 0){
		instance_destroy(id);
	}
	
		
	
if(mouse_check_button(mb_left)){
		pressedIsTrue = true;
	}
	
	if(pressedIsTrue == true && alarm[0] == -1){
		thisMouse_x = mouse_x;
		thisMouse_y = mouse_y;

		alarm[0] = (room_speed - 40) / baseAttackSpeed;
	}
	

	



	


