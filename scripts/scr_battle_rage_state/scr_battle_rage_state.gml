///scr_battle_rage_state()
var sprite_data = o_data.sprites[? sprite_get_name(sprite[HIT_ANGRY])];
raged = true;
rage_timer = 4;
scr_battle_approach_angry_state();