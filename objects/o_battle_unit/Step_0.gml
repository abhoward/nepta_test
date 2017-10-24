/// @description  Execute the state
script_execute(state);	

//if (object_index == o_player_battle_unit) {
//	if (o_player_battle_unit.poisoned) {
//		instance_destroy(o_player_poison_line);
//		instance_create_depth(o_player_battle_unit.xstart - (o_battle_unit_ui.sprite_width/2) + 3 + global.player_poison_pos, y + 8, -100, o_player_poison_line);
//	}
//} else if (object_index == o_enemy_battle_unit) {
//	if (o_enemy_battle_unit.poisoned) {
//		instance_destroy(o_enemy_poison_line);
//		instance_create_depth(o_enemy_battle_unit.xstart - (o_battle_unit_ui.sprite_width/2) + 3 + global.enemy_poison_pos, y + 8, -100, o_enemy_poison_line);
//	}
//}

//Check for poison damage
with (o_player_battle_unit) {
	if (poisoned && !poison_hit && instance_exists(o_player_poison_line)) {
		if (unit_ui.x + action_meter + 3 >= o_player_poison_line.x) {
			scr_battle_poison_effect(o_player_battle_unit);
			poison_hit = true;
		}
	}
}

with (o_enemy_battle_unit) {
	if (poisoned && !poison_hit && instance_exists(o_enemy_poison_line)) {
		if (unit_ui.x + action_meter + 3 >= o_enemy_poison_line.x) {
			scr_battle_poison_effect(o_enemy_battle_unit);
			poison_hit = true;
		}
	}
}