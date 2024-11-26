/// @description Insert description here
// You can write your code in this editor

// Get input 
keyboard_left = -keyboard_check(vk_left); 
keyboard_right = keyboard_check(vk_right); 
keyboard_jump = keyboard_check_pressed(vk_up);

// Use input 
var move = keyboard_left + keyboard_right; hsp = move * moveSpeed; 


function TestVerticalCollision(){
	
	if(place_meeting(x, y + vsp, layer_tilemap_get_id("platforms"))){
		return true;
	}
	return false;
}

function TestHorizontalCollision(){
	
	if (place_meeting(x + hsp, y, layer_tilemap_get_id("platforms"))) {
		return true;
	}
	return false;
}


if (vsp < 10) 
{ 
	vsp += grav; 
};

if (place_meeting(x, y + 1, layer_tilemap_get_id("platforms"))) 
{ 
	vsp = keyboard_jump * -jumpSpeed 
}



//H Collisions 
if (TestHorizontalCollision())
{ 
	while (!place_meeting(x + sign(hsp), y,  layer_tilemap_get_id("platforms"))) 
	{ 
		x += sign(hsp); 
	} 
hsp = 0; 
} 
x += hsp;

//v Collisions 
if (TestVerticalCollision()) 
{ 
	while (!place_meeting(x, y + sign(vsp),  layer_tilemap_get_id("platforms"))) 
	{ 
		y += sign(vsp); 
	} 
vsp = 0; 
} y += vsp;
