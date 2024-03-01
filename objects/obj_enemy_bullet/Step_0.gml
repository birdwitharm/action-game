image_angle = direction - 50;

move_towards_point(obj_player.x, obj_player.y, bullet_speed)

if (place_meeting(x, y, obj_player) || x > room_width || x < 0 || y > room_height || y < 0 ) 
{
	instance_destroy(id)
}