with (other)
{
    //bullet shake counter
	hp_bullet_shake = hp_bullet_shake - 1;
	
	// enemy health + killing the enemy
	enemy_health = enemy_health - 1;
	if (enemy_health < 0) 
	{
		instance_destroy();
		
		obj_shake.shake = true;
		audio_play_sound(snd_enemy_hit, 1, false);
		global.pscore ++;
	}
}

//instance_destroy();