/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if (instance_exists(objPlayer)){
var bullet = instance_create_layer(x, y, "Instances",objEnemyBullet); // Create a bullet and store its ID in the variable "bullet". We need its ID b/c we want to do a few more things with it.
with (bullet)
{
   direction = point_direction(x, y, objPlayer.x, objPlayer.y); // Give the bullet a direction
   speed = 10;
}
alarm[2] = room_speed * 3; // Reset this alarm so the enemy will shoot after 5 more seconds. This will loop.
}