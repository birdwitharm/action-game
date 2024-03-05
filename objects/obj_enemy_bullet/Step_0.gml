image_angle = direction - 50;

move_towards_point(obj_player.x, obj_player.y, bullet_speed)

// destroying enemy bullets when touching the player or going out of bounds
if (place_meeting(x, y, obj_player) || x > room_width || x < 0 || y > room_height || y < 0 ) 
{
	instance_destroy(id);
	
	obj_shake.shake = true;
	audio_play_sound(snd_player_hit, 1, false);
	
}

// destroying enemy bullets when touching a player bullet
if (place_meeting(x, y, obj_bullet)) instance_destroy(id);