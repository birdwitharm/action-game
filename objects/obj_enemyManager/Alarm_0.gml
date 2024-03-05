// ranomly spawn enemies
randomize();

instance_create_layer(random(room_width - 500), random(room_height - 500), "Instances", obj_enemy);
alarm[0] = spawnrate;