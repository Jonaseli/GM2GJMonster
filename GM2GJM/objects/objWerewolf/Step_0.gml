/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(mouse_check_button(mb_right)){
		pressedRightIsTrue = true;
	}
	if(pressedRightIsTrue == true && alarm[1] == -1){
		thisMouse_x = mouse_x;
		thisMouse_y = mouse_y;

		alarm[1] = (room_speed - 40) / specialSpeed;
		specialSpeed -= 0.1;
	}