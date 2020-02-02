// counters
enemyCounter = instance_number(objEnemy);


// create arena
if (makeArena == true)
{
	var tempList = ds_list_create();

	for (var h = 0; h < 4; h++)
	{
		var rndVal = round(random_range(1, array_length_1d(arrTemplates)-1));
		ds_list_add(tempList, rndVal);
	}

	var rndPos = round(random_range(0, ds_list_size(tempList)-1));
	ds_list_set(tempList, rndPos, 0);

	var xi = 0;
	var yi = 0;

	for (var i = 0; i < 4; i++)
	{
		if (xi >= 2)
		{
			yi++;
			xi = 0;
		}
		
		var indent = 512;
		var roomMaker = instance_create_layer(indent * xi, indent*4 + indent * yi,"layer_dev", objMakeRoom);
		roomMaker.grid = ds_list_find_value(tempList, i);
	
		xi++;
	}
	
	makeArena = false;
}