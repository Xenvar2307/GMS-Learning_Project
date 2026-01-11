/// @description Insert description here
// You can write your code in this editor

x = obj_player.x
y = obj_player.y

image_angle = point_direction(x,y,mouse_x,mouse_y)

if instance_exists(obj_player)
{
	if obj_player.attack_timer > 0
	{
	recharge = true
	}
	else
	{
	recharge = false
	}

	if recharge == true
	{
		image_blend = c_red;
	}
	else
	{
		//return to normal
		image_blend = c_white;
		//image_blend = -1 same thing
	}
}