draw_text(x, y - 32, "Vitality: " + string(global.vitality));
draw_text(x, y + 0, "Strength: " + string(global.strength));
draw_text(x, y + 32, "Dexterity: " + string(global.dexterity));
draw_text(x, y + 64, "Health: " + string(objPlayer.remainingHP));
draw_text(x, y + 86, "Alarm: " + string(objEnemy.alarm[0]));
draw_text(x, y + 124, "Room Speed: " + string(room_speed));
draw_text(x, y + 150, "FPS: " + string(fps));
