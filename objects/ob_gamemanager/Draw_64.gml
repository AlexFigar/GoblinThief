/// @description Insert description here
// You can write your code in this editor
if can_fade == 1 {
    draw_set_alpha(fade_timer/fade_timer_max);
    draw_set_color(c_black);
    draw_rectangle(0,0,5000,5000,false);
    draw_set_alpha(1);
}

if can_fade_white == 1 {
    draw_set_alpha(fade_timer_white/fade_timer_max_white);
    draw_set_color(c_white);
    draw_rectangle(0,0,5000,5000,false);
    draw_set_alpha(1);
}