/// @description Insert description here
// You can write your code in this editor

width = sprite_get_width(sp_heart) * 1.1
startx = width/2
starty = sprite_get_height(sp_heart)/2

for(var i = 0; i < hearts; i++){
	draw_sprite(sp_heart,0, startx + (width*i), starty)
}

starty = sprite_get_height(sp_cursor)*1.1

for(var i = 0; i < strength; i++){
	draw_sprite(sp_cursor,0, startx + (width*i), starty)
}

