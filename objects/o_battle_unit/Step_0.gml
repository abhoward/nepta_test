/// @description  Execute the state
script_execute(state);	

//Check for poison damage
with (o_player_battle_unit) {
	if (poisoned) {
		if (action_meter == global.player_poison_pos) {
			script_execute(scr_battle_poison_effect);
		}
	}
}

with (o_enemy_battle_unit) {
	if (poisoned) {
		if (action_meter == global.enemy_poison_pos) {
			script_execute(scr_battle_poison_effect);
		}
	}
}