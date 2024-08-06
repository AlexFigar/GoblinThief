/// @description Insert description here
// You can write your code in this editor

var x_velocity = 0;
var y_velocity = 0;
//var time_step = delta_time / 1000000;


	if (keyboard_check(vk_left))
	{
	    x_velocity -= movement_speed
	}
	
	if (keyboard_check(vk_right))
	{
	    x_velocity += movement_speed 
	}
	
	if (keyboard_check(vk_up))
	{
	    y_velocity -= movement_speed 
	}
	
	if (keyboard_check(vk_down))
	{
	    y_velocity += movement_speed 
	}
	
	//Sprint key!
	if(keyboard_check(vk_shift)){
		x_velocity *= run_speed;
		y_velocity *= run_speed;
	}


move_and_collide(x_velocity, y_velocity, layer_tilemap_get_id("Walls"))

//hspeed = x_velocity
//vspeed = y_velocity