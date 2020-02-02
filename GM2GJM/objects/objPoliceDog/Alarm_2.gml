/// @description melee
// You can write your code in this editor
if(distance_to_object(objPlayer)<64){
		
		instance_create_layer(x + lengthdir_x(70,point_direction(x,y, objPlayer.x, objPlayer.y)),
		y + lengthdir_y(70,point_direction(x,y, objPlayer.x, objPlayer.y)),"Instances", objEnemyMelee);;
		

}
alarm[2] = room_speed *0.5;