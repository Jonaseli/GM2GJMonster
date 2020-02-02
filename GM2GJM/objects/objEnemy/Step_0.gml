

if (distance_to_object(objPlayer) < agroRange){
	if(distance_to_object(objPlayer) > maintainedDistance ){
		mp_potential_step(objPlayer.x, objPlayer.y, movementSpeed, true);
	}
} else {
	if (alarm[1] == -1){
		alarm[1] = room_speed * 5;
	}
	mp_potential_step(chosenX, chosenY,  movementSpeed, true)
}

//Kill object if HP <= 0
if(remainingHP <= 0){
	instance_destroy(id);
}

//Enemy collides with player, and deals base dmg. BaseAttackspeed is cooldown.
if (place_meeting(x, y, objPlayer) && alarm[0] == -1){
	objPlayer.baseHealth -= baseDmg;
	alarm[0] = room_speed * baseAttackSpeed;
}