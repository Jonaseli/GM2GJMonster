/// @description Patroll event
// You can write your code in this editor

//move_towards_point(random_range(0,1024), random_range(0,1024), movementSpeed);

maxX = x - (1024 - 64);
minX = x + 64;
maxY = y - (3072 - 64);
minY = y + 64;
	
again = true;
	
while(again){
	chosenX = random_range(x - strollDistance, x + strollDistance);
	chosenY = random_range(y - strollDistance, y + strollDistance);
	
	if((chosenX > minX || chosenX < maxX) && (chosenY > minY || chosenY < maxY)){
		if(collision_point( chosenX, chosenY, objWall, true, true)){
			again = false;
		}	
	}	
}