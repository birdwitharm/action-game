switch(state)  
{
	case enemyState.IDLE:
	
	if (point_distance(x, y, obj_player.y, obj_player.y) < close)
	{
		state = enemyState.CHASE
	}
	
	/*if (next_time < 0)
	{
		next_time = 30
		image_angle = random(360)
	}*/
	
	x += lengthdir_x(enemy_speed, image_angle)
	y += lengthdir_y(enemy_speed, image_angle)
		
	break;
	
	case enemyState.CHASE:
	
	if(point_distance(x, y, obj_player.x, obj_player.y) > far)
	{
		state = enemyState.IDLE
			
	} else {
			
		if(point_distance(x, y, obj_player.x, obj_player.y) > close)
		{
			state = enemyState.SHOOTING
		}
	}

	var vector_to_player = point_direction(x, y, obj_player.x, obj_player.y)

	image_angle = vector_to_player

	x += lengthdir_x(enemy_speed, image_angle)
	y += lengthdir_y(enemy_speed, image_angle)
		
	break;
	
	case enemyState.SHOOTING:
	
}

