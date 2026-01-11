/// @description Insert description here
// You can write your code in this editor
x = room_width/2;
y = room_height/2;

spd = 1.5;

vspd = 0;
hspd = 0;

attack = false;

attack_timer = 20; // every 1/3rd of a second
attack_timer_default = 20;

death = false


instance_create_layer(x,y, "Bullet", obj_gun)
instance_create_layer(x,y,"Instances", obj_spawner)



