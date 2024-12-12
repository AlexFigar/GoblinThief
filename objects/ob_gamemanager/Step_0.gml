
if instance_exists(ob_player) {
    if ob_player.hearts <= 0 {
		ob_player.can_move = false
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

if can_fade_white == 1 {
    fade_timer_white += 1;
    if fade_timer_white >= fade_timer_max_white {
        fade_timer_white = 0;
        can_fade_white = 0;
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
	ob_door.sprite_index = sp_unlocked_door
	
	}
}