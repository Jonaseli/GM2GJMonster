

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

// sprite animation
arrSprites = [sprNpcIdle, sprNpcSideways, sprNpcDown, sprNpcUp];
arrSpritesDog = [sprDogIdle, sprDogSideways, sprDogDown, sprDogUp];

var me = undefined;
if (instance_exists(id)) me = id.object_index;
var sprArray = arrSprites;

if (me != undefined)
{
	if (me = objCitizen) image_blend = make_color_hsv(0, 0, 255);
	if (me = objPoliceOfficer) image_blend = make_color_hsv(150, 255, 255);
	if (me = objSoldier) image_blend = make_color_hsv(100, 255, 255);
	if (me = objPoliceDog) sprArray = arrSpritesDog;


if ((direction > -45 && direction < 45) || (direction > 135 && direction < 225)) sprite_index = sprArray[1];
if (direction > 45 && direction < 135) sprite_index = sprArray[3];
if (direction > 225 && direction < 315) sprite_index = sprArray[2];
if ((direction > -45 && direction < 45)) image_xscale = 1;
if ((direction > 135 && direction < 225)) image_xscale = -1;
}