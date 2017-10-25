///scr_draw_bar(x, y, sprite, value, max_value)
var xx = argument0;
var yy = argument1;
var sprite = argument2;
var value = argument3;
var max_value = argument4;

var index = (value / max_value) * (sprite_get_number(sprite) - 1);

// Draw health bar
draw_sprite(sprite, index, xx, yy);