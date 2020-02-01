/// @description Movements and Traits
// You can write your code in this editor
//move_x = x;
//move_y = y;


health = 10
//basic start
vitality = 1;
strength = 1;
dexterity = 0.3;

//stats
baseHealth = health *vitality; 
remainingHP = baseHealth;
baseDmg = 1* strength;

baseAttackSpeed = 0 + dexterity;
//mouse handling
pressedIsTrue = false;

thisMouse_x = mouse_x;
thisMouse_y = mouse_y;