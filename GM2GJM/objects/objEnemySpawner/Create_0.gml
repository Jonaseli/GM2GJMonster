/// @description Algorithm used to spawn enemy
/// @description Spawn enemies
var obj = objLevelManager;

if (obj.levelType != undefined) // create enemy data structure
{	
	obj.currentLevel++;
	obj.balanceValue += 0.25;
	
	var array;
	
	if (obj.levelType = "chaos") array = obj.arrChaos;
	if (obj.levelType = "tough") array = obj.arrTough;
	if (obj.levelType = "boss") array = obj.arrBoss;

	//enemy setting
	var rndIndex = round(random_range(0,array_length_1d(array)-1));
	var enemyType = array[rndIndex];

	var enemy = instance_create_layer(x, y, "layer_enemy", enemyType);
	enemy.difficultyModifier += obj.currentLevel/obj.balanceValue;

	obj.levelType = undefined;
	
	
}

instance_destroy();