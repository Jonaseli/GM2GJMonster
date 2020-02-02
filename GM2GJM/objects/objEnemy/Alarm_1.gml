/// @description Patroll event
// You can write your code in this editor

//move_towards_point(random_range(0,1024), random_range(0,1024), movementSpeed);

maxX = 1024 - 64;
minX = 64;
maxY = 3072 - 64;
minY = 64;
	
again = true;
	
while(again){
	chosenX = random_range(objEnemy.x - strollDistance, objEnemy.x + strollDistance);
	chosenY = random_range(objEnemy.y - strollDistance, objEnemy.y + strollDistance);
	
	if((chosenX > minX && chosenX < maxX) && (chosenY > minY && chosenY < maxY)){
		if(!collision_point( chosenX, chosenY, objWall, true, true)){
			again = false;
		}	
	}	
}