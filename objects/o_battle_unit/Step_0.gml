/// @description  Execute the state
script_execute(state);

// Check for poison damage
with (o_player_battle_unit) {
	if (poisoned && !poison_hit && instance_exists(o_player_poison_line)) {
		if (floor(unit_ui.x + 3 + ((sprite_get_number(s_action_meter) / max_action_meter) * action_meter)) == o_player_poison_line.x) {
			scr_battle_poison_effect(o_player_battle_unit);
			poison_timer--;
		}
	}
}

with (o_enemy_battle_unit) {
	if (poisoned && !poison_hit && instance_exists(o_enemy_poison_line)) {
		if (floor(unit_ui.x + 3 + ((sprite_get_number(s_action_meter) / max_action_meter) * action_meter)) == o_enemy_poison_line.x) {
			scr_battle_poison_effect(o_enemy_battle_unit);
			poison_timer--;
		}
	}
}

// Check for confuse damage
with (o_player_battle_unit) {
	if (confused && !confuse_hit && instance_exists(o_player_confuse_line)) {
		if (floor(unit_ui.x + 3 + ((sprite_get_number(s_action_meter) / max_action_meter) * action_meter)) == o_player_confuse_line.x) {
			if (chance(0.95)) {
				scr_battle_confuse_effect(o_player_battle_unit);
			}
			confuse_timer--;
		}
	}
}

with (o_enemy_battle_unit) {
	if (confused && !confuse_hit && instance_exists(o_enemy_confuse_line)) {
		if (floor(unit_ui.x + 3 + ((sprite_get_number(s_action_meter) / max_action_meter) * action_meter)) == o_enemy_confuse_line.x) {
			if (chance(0.95)) {
				scr_battle_confuse_effect(o_enemy_battle_unit);
			}
			confuse_timer--;
		}
	}
}