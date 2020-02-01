/// @description Spawn enemies
if (levelType != undefined) // create enemy data structure
{
	var array;
	var enemyCount;
	
	if (levelType = "chaos")
	{
		array = arrChaos;
		enemyCount = round(random_range(7, 15));
	}
	if (levelType = "tough")
	{
		array = arrTough;
		enemyCount = round(random_range(2, 4));
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
			(room_height / 4) * 3 + yPos,
			"layer_enemy", enemyType
		);
	}


	levelType = undefined;
}

// enemy counter
enemyCounter = instance_number(objEnemy);