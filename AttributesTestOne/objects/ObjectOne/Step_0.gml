/// @description Movement
// You can write your code in this editor


if(mouse_check_button(mb_left)){
	click_x = mouse_x;
	click_y = mouse_y;
	
}
	if(distance_to_point(click_x, click_y)) > 0{
		move_towards_point(click_x,click_y,5);
		
	}
	else if(distance_to_point(click_x,click_y)) = 0{
		speed = 0;
}
	


