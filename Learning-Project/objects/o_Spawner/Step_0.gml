/// @description Insert description here
// You can write your code in this editor

if enemy_spawn_timer > 0
{
	enemy_spawn_timer -= 1;
}
else
{
	enemy_spawn = true;
}

if enemy_spawn == true
{
	enemy_spawn = false;
	enemy_spawn_timer = enemy_spawn_timer_default;
	randomize();
	enemy_spawn_x = x + irandom_range(-room_width, room_width)
	enemy_spawn_y = y + irandom_range(-room_height, room_height)
	instance_create_layer(enemy_spawn_x, enemy_spawn_y, "Instances", o_Enemy)
}


