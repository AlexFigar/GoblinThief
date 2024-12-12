/// @description Insert description here
// You can write your code in this editor


if instance_exists(ob_player) {
    if ob_player.hearts <= 0 {
        can_fade = 1;
    }
}
if can_fade == 1 {
    fade_timer += 1;
    if fade_timer >= fade_timer_max {
        fade_timer = 0;
        can_fade = 0;
        room_restart();
    }
}

// checking every frame is bad i know but also it 
//just feels wrong to have it on the player or goblin object
if(!instance_exists(ob_goblin)){ 
	
	//Open door
	if(!door_open){
	door_open = true
	audio_play_sound(unlock,2,false);
	ob_door.locked = false;
	
	}
}