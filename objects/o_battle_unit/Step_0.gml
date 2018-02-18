/// @description  Execute the state
script_execute(state);

with (o_player_battle_unit) {
	// Check for poison damage
	if (poisoned && instance_exists(o_player_poison_line)) {
		show_debug_message("floor theoretical pos of action_meter: " + string(floor(unit_ui.x + 3 + ((186 / max_action_meter) * action_meter))));
		show_debug_message("ceil theoretical pos of action_meter: " + string(ceil(unit_ui.x + 3 + ((186 / max_action_meter) * action_meter))));
		show_debug_message("actual theoretical pos of action_meter: " + string((unit_ui.x + 3 + ((186 / max_action_meter) * action_meter))));
		show_debug_message("actual pos of poison_line: " + string(o_player_poison_line.x));
		show_debug_message("floor comparison: " + string((floor(unit_ui.x + 3 + ((186 / max_action_meter) * action_meter)) != o_player_poison_line.x)))
		show_debug_message("ceil comparison: " + string(ceil(unit_ui.x + 3 + ((186 / max_action_meter) * action_meter)) != o_player_poison_line.x))
		show_debug_message("---------------------------")
		if ((floor(unit_ui.x + 3 + ((186 / max_action_meter) * action_meter)) != o_player_poison_line.x) && (ceil(unit_ui.x + 3 + ((186 / max_action_meter) * action_meter)) != o_player_poison_line.x)) {
			poison_passed = false;
		} else if (!poison_passed) {
			scr_battle_poison_effect(o_player_battle_unit);
			poison_timer--;
			poison_passed = true;
			show_debug_message("Player poison timer: " + string(poison_timer))
		}
	}
	// Check for confuse damage
	if (confused && instance_exists(o_player_confuse_line)) {
		if ((floor(unit_ui.x + 3 + ((186 / max_action_meter) * action_meter)) != o_player_confuse_line.x) && (ceil(unit_ui.x + 3 + ((186 / max_action_meter) * action_meter)) != o_player_confuse_line.x)) {
			confuse_passed = false;
		} else if (!confuse_passed) {
			scr_battle_confuse_effect(o_player_battle_unit);
			confuse_timer--;
			confuse_passed = true;
			show_debug_message("Player confuse timer: " + string(confuse_timer))
		}
		//if (floor(unit_ui.x + 3 + ((186 / max_action_meter) * action_meter)) != o_player_confuse_line.x) {
		//	confuse_passed = false;	
		//} else if (floor(unit_ui.x + 3 + ((186 / max_action_meter) * action_meter)) == o_player_confuse_line.x && !confuse_passed) {
		//	scr_battle_confuse_effect(o_player_battle_unit);
		//	confuse_timer--;
		//	confuse_passed = true;
		//	show_debug_message("Player confuse timer: " + string(confuse_timer))
		//}
	}
}

with (o_enemy_battle_unit) {
	// Check for poison damage
	if (poisoned && instance_exists(o_enemy_poison_line)) {
		if ((floor(unit_ui.x + 3 + ((186 / max_action_meter) * action_meter)) != o_enemy_poison_line.x) && (ceil(unit_ui.x + 3 + ((186 / max_action_meter) * action_meter)) != o_enemy_poison_line.x)) {
			poison_passed = false;
		} else if (!poison_passed) {
			scr_battle_poison_effect(o_enemybattle_unit);
			poison_timer--;
			poison_passed = true;
			show_debug_message("Enemy poison timer: " + string(poison_timer))
		}
		//if (floor(unit_ui.x + 3 + ((186 / max_action_meter) * action_meter)) != o_enemy_poison_line.x) {
		//	poison_passed = false;
		//} else if (floor(unit_ui.x + 3 + ((186 / max_action_meter) * action_meter)) == o_enemy_poison_line.x && !poison_passed) {
		//	scr_battle_poison_effect(o_enemy_battle_unit);
		//	poison_timer--;
		//	poison_passed = true;
		//	show_debug_message("Enemy poison timer: " + string(poison_timer))
		//}
	}
	// Check for confuse damage
	if (confused && instance_exists(o_enemy_confuse_line)) {	
		if ((floor(unit_ui.x + 3 + ((186 / max_action_meter) * action_meter)) != o_enemy_confuse_line.x) && (ceil(unit_ui.x + 3 + ((186 / max_action_meter) * action_meter)) != o_enemy_confuse_line.x)) {
			confuse_passed = false;
		} else if (!confuse_passed) {
			scr_battle_confuse_effect(o_enemy_battle_unit);
			confuse_timer--;
			confuse_passed = true;
			show_debug_message("Enemy confuse timer: " + string(confuse_timer))
		}		
		//if (floor(unit_ui.x + 3 + ((190 / max_action_meter) * action_meter)) != o_enemy_confuse_line.x) { //190 is width of the action_meter portion of s_info_bar
		//	confuse_passed = false;	
		//} else if (floor(unit_ui.x + 3 + ((190 / max_action_meter) * action_meter)) == o_enemy_confuse_line.x && !confuse_passed) {
		//	scr_battle_confuse_effect(o_enemy_battle_unit);
		//	confuse_timer--;
		//	confuse_passed = true;
		//	show_debug_message("Enemy confuse timer: " + string(confuse_timer))
		//}
	}
}