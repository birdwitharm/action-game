image_angle = direction - 50

var nearest_enemy = instance_nearest(x, y, obj_bullet)

move_towards_point(nearest_enemy.x, nearest_enemy.y, bullet_speed)

// destroyed if touching enemies or out of room bounds
if (place_meeting(x, y, obj_enemy) || x > room_width || x < 0 || y > room_height || y < 0 ) 
{
	instance_destroy(id)
}



