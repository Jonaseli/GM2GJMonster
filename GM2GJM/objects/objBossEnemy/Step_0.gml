
//Move in a cicle

if(enemiesToSpawn > enemiesSpawned){
	if(alarm[0] == -1 && instance_exists(objPlayer)){
		for (var i = 0; i < random_range(1, 4);i++){
			instance_create_layer(x + (i * 64), y + (i * 64), "layer_enemy", objSoldier);
			enemiesSpawned++;
		}
		alarm[0] = room_speed * 2;
	} else {
		x = 512 + lengthdir_x(350, n);
		y = 2560 + lengthdir_y(350, n);
		n += 0.5;
	}
} else {
	instance_destroy(id);
}
