/// @description Insert description here
// spawn objects algorithm
if (grid != undefined)
{
	var amount = 8;
	var indent = 64;

	for (var i = 0; i < amount; i++)
	{
		for (var j = 0; j < amount; j++)
		{
			var value = ds_grid_get(grid, j, i);
	
			switch(value) // 0 air, 1 wall, 2 enemy, 3, wall/air, 4, player 5, boss
			{
				case 1:
					instance_create_layer(x + indent * j, y + indent * i, "layer_map", objWall);
					break;
				
				case 2:
					instance_create_layer(x + indent * j, y + indent * i, "layer_map", objEnemySpawner);
					break;
					
				case 3:
					instance_create_layer(x + indent * j, y + indent * i, "layer_map", objWerewolf);
					break;
				
				case 4:
					var rndVal = random_range(0, 100);
					if (rndVal < 50) instance_create_layer(x + indent * j, y + indent * i, "layer_map", objWall);
					break;			
			}
		}
	}
	grid = undefined;
}

instance_destroy();