///scr_battle_fire_spell_state()
var sprite_data = obj_data.sprites[? sprite_get_name(sprite[RANGED])];
scr_battle_ranged_attack_state(sprite_data[? "xoffset"], sprite_data[? "yoffset"], obj_fire_spell, 1);