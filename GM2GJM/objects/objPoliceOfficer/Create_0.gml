/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (random_range(0, 10) < 5){
	instance_create_layer(sprite_width, y, Instances, objPoliceDog);
}

