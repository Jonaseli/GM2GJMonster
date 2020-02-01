
if (distance_to_object(objPlayer) < agroRange){
	movementSpeed = 1;
	move_towards_point(objPlayer.x, objPlayer.y, movementSpeed);
} else {
	if (alarm[1] == -1)
	alarm[1] = room_speed * 5;
}


/*
if (!place_meeting(x, y, objPlayer) && !place_meeting(x, y, objWall)){
	
		if (x < objPlayer.x){
			x++;
		}

		if ( x > objPlayer.x){
			x--;
		}

		if ( y < objPlayer.y){
			y++;
		}

		if ( y > objPlayer.y){
			y--;
		}
	
}
*/

//Kill object if HP <= 0
if(baseHP <= 0){
	instance_destroy(id);
}

//Enemy collides with player, and deals base dmg. BaseAttackspeed is cooldown.
if (place_meeting(x, y, objPlayer) && alarm[0] == -1){
	objPlayer.remainingHP -= baseDmg;
	alarm[0] = room_speed * baseAttackSpeed;
}


