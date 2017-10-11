///scr_battle_fire_spell_state()
var sprite_data = o_data.sprites[? sprite_get_name(sprite[RANGED])];
scr_battle_ranged_attack_state(sprite_data[? "xoffset"], sprite_data[? "yoffset"], o_sonar_spell, sprite_data[? "hit frame"]);