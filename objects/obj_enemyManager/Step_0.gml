if (place_meeting(x, y, obj_bullet)) enemy_health --;

if (enemy_health <= 0) instance_destroy(id);