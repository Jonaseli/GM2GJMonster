/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if instance_exists(objEnemy){
if(mouse_check_button_pressed(mb_right)){
		pressedRightIsTrue = true;
		
		while(pressedRightIsTrue == true&& alarm[1] == -1){
		objEnemy.agroRange = 0;
		
		alarm[1] = (room_speed - 40) / specialSpeed;
		specialSpeed = 0;
		
		} 
		
	} else if ((mouse_check_button_pressed(mb_left)) && (objEnemy.agroRange != 200)){
		objEnemy.agroRange = 200;
	}
	
}
	