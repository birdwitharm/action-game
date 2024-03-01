if (ds_list_size(enemy_count) < 8)
{
	randomize();
	var enemy = instance_create_layer(random(2500), random(2500), "Instances", obj_enemy)
	ds_list_add(enemy_count, enemy)
}

