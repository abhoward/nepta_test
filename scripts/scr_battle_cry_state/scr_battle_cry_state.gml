///scr_battle_cry_state()
var sprite_data = o_data.sprites[? sprite_get_name(sprite[RANGED_SAD])];
scr_battle_ranged_attack_sad_state(sprite_data[? "xoffset"], sprite_data[? "yoffset"], o_cry_spell, sprite_data[? "hit frame"]);

