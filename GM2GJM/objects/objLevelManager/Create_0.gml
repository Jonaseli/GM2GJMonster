/// @description Insert description here
arrChaos = [
	objCitizen,
	objCitizen,
	objCitizen,
	objCitizen,
	objCitizen,
	objCitizen,
	objCitizen,
	objCitizen,
	objPoliceOfficer,
	objPoliceOfficer,
	objSoldier
];

arrTough = [
	objSoldier,
	objSoldier,
	objSoldier,
	objPoliceOfficer
];

arrBoss = [
	objBossEnemy
];

// spawn settings
levelType = undefined; // tough, chaos, boss, loot
balanceValue = 1;
enemyCounter = 0;
currentLevel = 0;
character = undefined; // objMummy, objVampire, objWerewolf
makeArena = false;
startGame = false;

// templates
tempPlayer = ds_grid_create(8, 8); // player spawn
splitString(tempPlayer, "0, 0, 0, 0, 0, 0, 0, 0", 0);
splitString(tempPlayer, "0, 4, 4, 0, 0, 4, 4, 0", 1);
splitString(tempPlayer, "0, 4, 0, 0, 0, 0, 4, 0", 2);
splitString(tempPlayer, "0, 0, 0, 0, 0, 0, 0, 0", 3);
splitString(tempPlayer, "0, 0, 0, 3, 0, 0, 0, 0", 4);
splitString(tempPlayer, "0, 4, 0, 0, 0, 0, 4, 0", 5);
splitString(tempPlayer, "0, 4, 4, 0, 0, 4, 4, 0", 6);
splitString(tempPlayer, "0, 0, 0, 0, 0, 0, 0, 0", 7);

temp1 = ds_grid_create(8, 8); // crammed corridor
splitString(temp1, "1, 1, 1, 0, 0, 1, 1, 1", 0);
splitString(temp1, "1, 0, 0, 0, 0, 4, 0, 1", 1);
splitString(temp1, "1, 4, 1, 1, 0, 1, 0, 1", 2);
splitString(temp1, "0, 0, 0, 2, 0, 1, 0, 0", 3);
splitString(temp1, "0, 0, 1, 0, 0, 0, 0, 0", 4);
splitString(temp1, "1, 0, 1, 0, 1, 1, 4, 1", 5);
splitString(temp1, "1, 0, 4, 0, 2, 0, 0, 1", 6);
splitString(temp1, "1, 1, 1, 0, 0, 1, 1, 1", 7);

temp2 = ds_grid_create(8, 8); // small arena
splitString(temp2, "0, 0, 0, 0, 0, 0, 0, 0", 0);
splitString(temp2, "0, 1, 1, 0, 0, 1, 1, 0", 1);
splitString(temp2, "0, 1, 0, 0, 0, 0, 1, 0", 2);
splitString(temp2, "0, 0, 0, 4, 4, 0, 0, 0", 3);
splitString(temp2, "0, 0, 0, 4, 4, 0, 0, 0", 4);
splitString(temp2, "0, 1, 0, 0, 0, 0, 1, 0", 5);
splitString(temp2, "0, 1, 1, 0, 2, 1, 1, 0", 6);
splitString(temp2, "0, 0, 0, 0, 0, 0, 0, 0", 7);

temp3 = ds_grid_create(8, 8); // open ruins
splitString(temp3, "0, 0, 0, 0, 0, 0, 0, 0", 0);
splitString(temp3, "0, 4, 4, 4, 4, 4, 4, 0", 1);
splitString(temp3, "0, 0, 0, 0, 0, 0, 0, 0", 2);
splitString(temp3, "0, 0, 1, 0, 0, 1, 0, 0", 3);
splitString(temp3, "0, 0, 1, 0, 0, 1, 0, 0", 4);
splitString(temp3, "0, 2, 0, 0, 0, 0, 0, 0", 5);
splitString(temp3, "0, 4, 4, 4, 4, 4, 4, 0", 6);
splitString(temp3, "0, 0, 0, 0, 0, 0, 0, 0", 7);

temp4 = ds_grid_create(8, 8);
splitString(temp4, "1, 1, 4, 0, 0, 4, 1, 1", 0);
splitString(temp4, "1, 4, 0, 0, 0, 0, 4, 1", 1);
splitString(temp4, "4, 0, 0, 0, 0, 0, 0, 4", 2);
splitString(temp4, "0, 0, 0, 0, 2, 0, 0, 0", 3);
splitString(temp4, "0, 0, 0, 0, 0, 0, 0, 0", 4);
splitString(temp4, "4, 0, 0, 0, 0, 0, 0, 4", 5);
splitString(temp4, "1, 4, 0, 0, 0, 0, 4, 1", 6);
splitString(temp4, "1, 1, 4, 0, 0, 4, 1, 1", 7);

temp5 = ds_grid_create(8, 8);
splitString(temp5, "1, 1, 4, 0, 0, 4, 1, 1", 0);
splitString(temp5, "1, 4, 0, 0, 0, 0, 4, 1", 1);
splitString(temp5, "4, 0, 0, 2, 0, 0, 0, 4", 2);
splitString(temp5, "0, 0, 0, 0, 0, 0, 0, 0", 3);
splitString(temp5, "0, 0, 0, 2, 0, 0, 0, 0", 4);
splitString(temp5, "4, 0, 0, 0, 0, 0, 0, 4", 5);
splitString(temp5, "1, 4, 0, 0, 0, 2, 4, 1", 6);
splitString(temp5, "1, 1, 4, 0, 0, 4, 1, 1", 7);

tempBossEmpty = ds_grid_create(8, 8);
splitString(tempBossEmpty, "0, 0, 0, 0, 0, 0, 0, 0", 0);
splitString(tempBossEmpty, "0, 0, 0, 0, 0, 0, 0, 0", 1);
splitString(tempBossEmpty, "0, 0, 0, 0, 0, 0, 0, 0", 2);
splitString(tempBossEmpty, "0, 0, 0, 0, 5, 0, 0, 0", 3);
splitString(tempBossEmpty, "0, 0, 0, 0, 0, 0, 0, 0", 4);
splitString(tempBossEmpty, "0, 0, 0, 0, 0, 0, 0, 0", 5);
splitString(tempBossEmpty, "0, 0, 0, 0, 0, 0, 0, 0", 6);
splitString(tempBossEmpty, "0, 0, 0, 0, 0, 0, 0, 0", 7);

tempBoss = ds_grid_create(8, 8);
splitString(tempBoss, "0, 0, 0, 0, 0, 0, 0, 0", 0);
splitString(tempBoss, "0, 0, 0, 0, 0, 0, 0, 0", 1);
splitString(tempBoss, "0, 0, 0, 0, 0, 0, 0, 0", 2);
splitString(tempBoss, "0, 0, 0, 5, 0, 0, 0, 0", 3);
splitString(tempBoss, "0, 0, 0, 0, 0, 0, 0, 0", 4);
splitString(tempBoss, "0, 0, 0, 0, 0, 0, 0, 0", 5);
splitString(tempBoss, "0, 0, 0, 0, 0, 0, 3, 0", 6);
splitString(tempBoss, "0, 0, 0, 0, 0, 0, 0, 0", 7);


// array that holds templates
arrTemplates = [tempPlayer, temp1, temp2, temp3, temp4, temp5];
arrTempBoss = [tempBoss, tempBossEmpty, tempBossEmpty, tempBossEmpty, tempBossEmpty];