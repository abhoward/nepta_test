///scr_draw_nine_slice(sprite_index, x1, y1, x2, y2)
// REQUIRES SPRITES TO HAVE DIMENSIONS DIVISIBLE BY 3 (i.e. 12x12)
var sprite = argument0;
var x1 = argument1;
var y1 = argument2;
var x2 = argument3;
var y2 = argument4;

var sw = sprite_get_width(sprite) / 3;
var sh = sprite_get_height(sprite) / 3;
var w = x2 - x1;
var h = y2 - y1;

// Top
draw_sprite_part_ext(sprite, 0, 0, 0, sw, sh, x1, y1, 1, 1, c_white, 1); // Top left
draw_sprite_part_ext(sprite, 0, sw, 0, sw, sh, x1 + sw, y1, (w - sw * 2) / sw, 1, c_white, 1); // Top middle
draw_sprite_part_ext(sprite, 0, sw * 2, 0, sw, sh, x2 - sw, y1, 1, 1, c_white, 1); // Top right

// Middle
draw_sprite_part_ext(sprite, 0, 0, sh, sw, sh, x1, y1 + sh, 1, (h - sh * 2) / sh, c_white, 1); // Middle left
draw_sprite_part_ext(sprite, 0, sw, sh, sw, sh, x1 + sw, y1 + sh, (w - sw * 2) / sw, (h - sh * 2) / sh, c_white, 1); // Middle middle
draw_sprite_part_ext(sprite, 0, sw * 2, sh, sw, sh, x2 - sw, y1 + sh, 1, (h - sh * 2) / sh, c_white, 1); // Middle right

// Bottom
draw_sprite_part_ext(sprite, 0, 0, sh * 2, sw, sh * 2, x1, y2 - sh, 1, 1, c_white, 1); // Bottom left
draw_sprite_part_ext(sprite, 0, sw, sh * 2, sw, sh, x1 + sw, y2 - sh, (w - sw * 2) / sw, 1, c_white, 1); // Bottom middle
draw_sprite_part_ext(sprite, 0, sw * 2, sh * 2, sw, sh, x2 - sw, y2 - sh, 1, 1, c_white, 1); // Bottom right