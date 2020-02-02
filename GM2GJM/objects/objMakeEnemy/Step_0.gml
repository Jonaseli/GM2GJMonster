array = [
	objCitizen,
	objPoliceOfficer,
	objSoldier
];
	
	//enemy setting
	var rndIndex = round(random_range(0,array_length_1d(array)-1));
	var enemyType = array[rndIndex];

instance_create_layer(x, y, "layer_enemy", enemyType);
	
instance_destroy();