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
	/*
	remainingHP = baseHealth;
	remainingHP = remainingHP + vitality;
	baseDmg = strength; 
	baseAttackSpeed = dexterity;
	*/
	
	remainingHP = baseHealth * vitality;
	dmg = baseDmg * strength;
	attackSpeed = baseAttackSpeed / dexterity;

	W = keyboard_check(ord("W"));
	S = keyboard_check(ord("S"));
	A = keyboard_check(ord("A"));
	D = keyboard_check(ord("D"));
	var spd = 5;
	var hMove = (D - A)*spd;
	var vMove = (S - W)*spd;

	//Check for horizontal collisions and then move if we can
	if (place_meeting(x+hMove,y,objWall))
	{
    //move as close as we can
    while (!place_meeting(x+sign(hMove),y,objWall))
	    {
	        x = x + sign(hMove);
	    }
	    hMove = 0;
	}
	x += hMove;

	//Check for vertical collisions and then move if we can
	if (place_meeting(x,y+vMove,objWall))
	{
	    //move as close as we can
	    while (!place_meeting(x,y+sign(vMove),objWall))
	    {
	        y = y + sign(vMove);
	    }
	    vMove = 0;
	}
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

		instance_create_layer(x + lengthdir_x(70,point_direction(x,y, thisMouse_x, thisMouse_y)),
		y + lengthdir_y(70,point_direction(x,y, thisMouse_x, thisMouse_y)),"instances", objHitbox);

		if(instance_exists(objPlayer)){
			alarm[0] = attackSpeed;
		}
	}
	

	
	



	


