/// @description Insert description here
if (pause == true) objCamera.follow = objPointMap;
else objCamera.follow = objPointArena;

var key_esc = keyboard_check_pressed(vk_escape);

if (key_esc) pause = !pause;