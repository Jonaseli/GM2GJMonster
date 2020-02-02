/// @description Insert description here
// You can write your code in this editor

xView = camera_get_view_x(view_camera[0]);
yView = camera_get_view_y(view_camera[0]);

if(instance_exists(objPlayer)){
	draw_text_color(xView+10, yView+10, "Health: " + string(objPlayer.remainingHP), c_red, c_red, c_red, c_red, 1);
	draw_text(xView+10, yView+30, "STR: " + string(objPlayer.strength));
	draw_text(xView+10, yView+45, "VIT: " + string(objPlayer.vitality));
	draw_text(xView+10, yView+60, "DEX: " + string(objPlayer.dexterity));
}