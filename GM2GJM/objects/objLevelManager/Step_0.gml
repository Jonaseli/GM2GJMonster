/// @description Spawn enemies
if (levelType != undefined) // create enemy data structure
{
	// spawn playable character
	if (currentLevel == 0 && character != undefined)
	{
		instance_create_layer(objPointArena.x, objPointArena.y, "layer_player", character);
	}
	
	/*
	currentLevel++;
	balanceValue += 0.25;
	
	var array;
	var enemyCount;
	
	if (levelType = "chaos")
	{
		array = arrChaos;
		enemyCount = round(random_range(5, 8));
	}
	if (levelType = "tough")
	{
		array = arrTough;
		enemyCount = round(random_range(3, 4));
	}
	if (levelType = "loot")
	{
		enemyCount = 0;
		array = arrLoot;
	}
	if (levelType = "boss")
	{
		array = arrBoss;
	}

	// algorithm for spawning enemies
	for (var i = 0; i < enemyCount; i++)
	{
		//enemy setting
		var rndIndex = round(random_range(0,array_length_1d(array)-1));
		var enemyType = array[rndIndex];
		// spawn settings
		var len = random_range(96, 384);
		var dir = (360 / enemyCount) * i;
		
		var xPos = lengthdir_x(len, dir);
		var yPos = lengthdir_y(len, dir);

		var enemy = instance_create_layer(
			(room_width / 2) + xPos,
			(room_height / 6) * 5 + yPos,
			"layer_enemy", enemyType
		);
	
		enemy.difficultyModifier += currentLevel/balanceValue;
	}
	
	*/
	
	//add obj to spawn.
	arrRooms = [
	tempRoomSelect1,
	tempRoomSelect2,
	tempRoomSelect3,
	tempRoomSelect4
];


	
	for(var i = 0; i < 4; i++){
		switch(i){
			case 0:
				instance_create_layer(0, 2048,"Instances", arrRooms[i]);
				break;
				
			case 1:
				instance_create_layer(512, 2048,"Instances", arrRooms[i]);
				break;
				
			case 2:
				instance_create_layer(0, 2580,"Instances", arrRooms[i]);
				break;
			
			case 3:
				instance_create_layer(512, 2580,"Instances", arrRooms[i]);
				break;
		}
	}

	
	levelType = undefined;
}

// counters
enemyCounter = instance_number(objEnemy);