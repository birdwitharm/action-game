/*switch(state)  
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
	
	//x += lengthdir_x(enemy_speed, image_angle)
	//y += lengthdir_y(enemy_speed, image_angle)
		
	/*break;
	
	case enemyState.CHASE:
	
	move_towards_point(obj_player.x, obj_player.y, enemy_speed)
	
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
	
	if(point_distance(x, y, obj_player.x, obj_player.y) > far)
	{
		state = enemyState.IDLE
	} else {
		// shooting
		bullet_timer++
		if (bullet_timer > bullet_break)
		{
			instance_create_layer(x, y, "Instances", obj_bullet)
			bullet_timer = 0
		}
	}
}*/

image_angle = direction;

// enemy shooting
if (point_distance(x, y, obj_player.x, obj_player.y) < far)
{
	move_towards_point(obj_player.x, obj_player.y, enemy_speed)
	
} 

if (point_distance(x, y, obj_player.x, obj_player.y) < close) 
{
	move_towards_point(obj_player.x, obj_player.y, enemy_speed)
	
	bullet_timer ++
	
	if (bullet_timer > bullet_break) 
	{
		instance_create_layer(x, y, "Instances", obj_enemy_bullet)
		bullet_timer = 0
	}
}

// enemy death
if (place_meeting(x, y, obj_bullet)) enemy_health --;

if (enemy_health <= 0) instance_destroy(id);
