enum enemyState{
	IDLE,
	CHASE,
	SHOOTING
}

state = enemyState.IDLE
close = 150
far = 400

enemy_speed = 10
next_time = 50

// staggering bullet creation timer
bullet_timer = 0;
bullet_break = 5; 