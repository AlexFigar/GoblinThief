/// @description Insert description here
// You can write your code in this editor

// Get input 
keyboard_left = -keyboard_check(vk_left);
keyboard_right = keyboard_check(vk_right); 
keyboard_jump = keyboard_check_pressed(vk_up);

//prioritise wasd
if(keyboard_check(ord("A"))){
keyboard_left = -1
}

if(keyboard_check(ord("D"))){
keyboard_right = 1
}

if(keyboard_check(ord("W")) || keyboard_check(vk_space)){
keyboard_jump = 1
}else{
	keyboard_jump = 0
}

attack = mouse_check_button(mb_left)



// Use input 
var move = keyboard_left + keyboard_right; hsp = move * moveSpeed;

//helpful functions
function TestVerticalCollision(){
	
	if(place_meeting(x, y + vsp, ob_collider)){
		return true;
	}
	return false;
}

function TestHorizontalCollision(){
	
	if (place_meeting(x + hsp, y, ob_collider)) {
		return true;
	}
	return false;
}

//Sprite bs
if(hsp != 0){
	sprite_index = player_sprites[1]
	if (sign(hsp)){
		image_xscale = 1
	}else{
		image_xscale = -1
	}
}else{
	sprite_index = player_sprites[0]
}



if(!place_meeting(x, y + 0.5, ob_collider)){
	
	if(sign(vsp)){
	sprite_index =  player_sprites[2]
	image_index = clamp(image_index, 2, 4)

	}else{
	sprite_index = player_sprites[2]
	image_index = clamp(image_index, 0, 2)
	}

}else if(attack){
	sprite_index = player_sprites[3]
	image_speed = 1
	hsp = 0;
}

//end of sprite bs

if (vsp < 10) 
{ 
	vsp += grav; 
};

if (place_meeting(x, y + 0.5, ob_collider)) 
{ 
	vsp = keyboard_jump * -jumpSpeed 
}



//H Collisions 
if (TestHorizontalCollision())
{ 
	while (!place_meeting(x + sign(hsp), y,  ob_collider)) 
	{ 
		x += sign(hsp); 
	} 
hsp = 0; 
} 
x += hsp;

//v Collisions 
if (TestVerticalCollision()) 
{ 
	while (!place_meeting(x, y + sign(vsp),  ob_collider) || hearts == 0) 
	{ 
		y += sign(vsp); 
	}
vsp = 0;
} 
y += vsp;


