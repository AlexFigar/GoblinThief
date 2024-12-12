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