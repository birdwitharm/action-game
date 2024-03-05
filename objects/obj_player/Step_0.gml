// wasd movement
if (keyboard_check(ord("D")) && x + sprite_width < room_width)
{
	x += player_speed;
	if (x > (obj_cameraManager.x + 700)) obj_cameraManager.x += player_speed;
}

if (keyboard_check(ord("A")) && x > 0)
{
	x -= player_speed;
	if (x < (obj_cameraManager.x + obj_cameraManager.view_width) - (700 + sprite_width)) obj_cameraManager.x -= player_speed;
}

if (keyboard_check(ord("S")) && y + sprite_height < room_height)
{
	y += player_speed;
	if (y > (obj_cameraManager.y + 400)) obj_cameraManager.y += player_speed;
}

if (keyboard_check(ord("W")) && y > 0)
{
	y -= player_speed;
	if (y < (obj_cameraManager.y + obj_cameraManager.view_height) - (400 + sprite_height)) obj_cameraManager.y -= player_speed;
}

// shooting bullets
if (mouse_check_button_pressed(mb_left)) 
{
	instance_create_layer (x + 30, y, "Instances", obj_bullet)
	
	audio_play_sound(snd_shoot, 1, false);
}