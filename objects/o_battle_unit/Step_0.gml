/// @description  Execute the state
script_execute(state);

with (o_player_battle_unit) {
	// Check for poison damage
	if (poisoned && !poison_hit && instance_exists(o_player_poison_line)) {
		if (floor(unit_ui.x + 3 + ((sprite_get_number(s_action_meter) / max_action_meter) * action_meter)) == o_player_poison_line.x) {
			scr_battle_poison_effect(o_player_battle_unit);
			poison_timer--;
			show_debug_message("Player poison timer: " + string(poison_timer))
		}
	}
	// Check for confuse damage
	if (confused && !confuse_hit && instance_exists(o_player_confuse_line)) {
		if (floor(unit_ui.x + 3 + ((sprite_get_number(s_action_meter) / max_action_meter) * action_meter)) != o_player_confuse_line.x) {
			confuse_passed = false;	
		} else if (floor(unit_ui.x + 3 + ((sprite_get_number(s_action_meter) / max_action_meter) * action_meter)) == o_player_confuse_line.x && !confuse_passed) {
			scr_battle_confuse_effect(o_player_battle_unit);
			confuse_timer--;
			confuse_passed = true;
			show_debug_message("Player confuse timer: " + string(confuse_timer))
		}
	}
}

with (o_enemy_battle_unit) {
	// Check for poison damage
	if (poisoned && !poison_hit && instance_exists(o_enemy_poison_line)) {
		if (floor(unit_ui.x + 3 + ((sprite_get_number(s_action_meter) / max_action_meter) * action_meter)) == o_enemy_poison_line.x) {
			scr_battle_poison_effect(o_enemy_battle_unit);
			poison_timer--;
			show_debug_message("Enemy poison timer: " + string(poison_timer))
		}
	}
	// Check for confuse damage
	if (confused && !confuse_hit && instance_exists(o_enemy_confuse_line)) {
		if (floor(unit_ui.x + 3 + ((sprite_get_number(s_action_meter) / max_action_meter) * action_meter)) != o_enemy_confuse_line.x) {
			confuse_passed = false;	
		} else if (floor(unit_ui.x + 3 + ((sprite_get_number(s_action_meter) / max_action_meter) * action_meter)) == o_enemy_confuse_line.x && !confuse_passed) {
			scr_battle_confuse_effect(o_enemy_battle_unit);
			confuse_timer--;
			confuse_passed = true;
			show_debug_message("Enemy confuse timer: " + string(confuse_timer))
		}
	}
}

// Check for confuse damage
//with (o_player_battle_unit) {
	
//}

//with (o_enemy_battle_unit) {

//}