


if (!place_meeting(x, y, objPlayer)){


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