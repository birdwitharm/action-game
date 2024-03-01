// enemy health
enemy_health = 3;

// spawning enemies randomly

for (i = 0; i < 8; i++)
{
	randomize();
	instance_create_layer(random(2500), random(2500), "Instances", obj_enemy)
}

