// enemy facing player
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

