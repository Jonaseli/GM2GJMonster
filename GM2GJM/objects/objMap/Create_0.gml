
amount = 6;
indent = 128;
list_btns = ds_list_create();


// generate world map
for (var i = 0; i < amount; i++)
{
	var scope = 256;
	var rndAmount;
	if (i == 0 || (i == amount-1)) rndAmount = 1;
	else rndAmount = floor(random_range(1, 2.25));
	
	var prevX = 999999;
	var prevLvl = "lol";
	
	for (var j = 0; j < rndAmount; j++)
	{
		var xVariation = random_range(scope, room_width-scope);
		var nowX = prevX - xVariation;
		var limit = 192;
		
		// prevent button from spawning inside eachother
		if (abs(nowX) < limit) xVariation += (limit * -sign(nowX));
		
		// spawn button
		var button = instance_create_layer(
			xVariation,
			y - indent * i,
			"layer_map", objBtnArea
		);

		// level type algorithm
		var levelType;
		var loop = true;
		
		while (loop == true)
		{
			var rndLvl = random_range(0, 100);
			if (rndLvl > 0) levelType = "chaos";
			if (rndLvl > 50) levelType = "tough";
			if (rndLvl > 80) levelType = "loot";
			if (rndLvl > 95) levelType = "boss";
			
			loop = false;
			if (prevLvl == levelType) loop = true;
		}

		// button settings
		button.btnId = i;
		button.levelType = levelType;
		
		// update previous
		prevX = xVariation;
		prevLvl = levelType;
		ds_list_add(list_btns, button);
	}
}