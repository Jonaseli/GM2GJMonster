baseHp = 0;
baseDmg = 0;
baseAttackSpeed = 0;

vitality = 0;
strength = 0;
dexterity = 0;

if (!place_meeting(x, y, objPlayer)){
	
	if (!place_meeting(x, y, objWall)){
	
		if (x < objPlayer.x){
			x++;
		}

		if ( x > objPlayer.x){
			x--;
		}

		if ( y < objPlayer.y){
			y++;
		}

		if ( y > objPlayer.y){
			y--;
		}
	
	}
}


