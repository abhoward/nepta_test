///scr_battle_cry_state()
//global.poisoned_pos = random_range(o_battle_unit_ui.x + 3, (o_battle_unit_ui.x + 3) + o_battle_unit.max_action_meter);
//o_battle_unit.poisoned = true;

var sprite_data = o_data.sprites[? sprite_get_name(sprite[RANGED_SAD])];
scr_battle_ranged_attack_sad_state(sprite_data[? "xoffset"], sprite_data[? "yoffset"], o_cry_spell, sprite_data[? "hit frame"]);