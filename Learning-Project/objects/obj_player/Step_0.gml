/// @description Insert description here
// You can write your code in this editor

//Controls

var _key_up = keyboard_check(ord("W"));
var _key_down = keyboard_check(ord("S"));
var _key_left = keyboard_check(ord("A"));
var _key_right = keyboard_check(ord("D"));

var _key_attack = mouse_check_button(mb_left);

//Movement

vspd = spd*((_key_down) - (_key_up));
hspd = spd*((_key_right) - (_key_left));

x += hspd;
y += vspd;

//Shooting
if (_key_attack)
{
	//Timer
	if attack_timer <= 0
	{
		//Attack
		attack_timer = attack_timer_default;
		var _b = instance_create_layer(x,y,"Bullet", obj_bullet);
		_b.direction = point_direction(x,y,mouse_x, mouse_y)
		
	}
}
// reduce timer
if attack_timer > 0 
{
	attack_timer += -1
}

//death
if death == true
{
	room_restart()
}