/// @description  Execute the state
script_execute(state);	

//Check for poison damage
with (o_player_battle_unit) {
	if (poisoned && !poison_hit) {
		global.player_poison_pos = irandom(sprite_get_width(s_action_meter));
		if (action_meter - 17 >= (global.player_poison_pos)) {
			script_execute(scr_battle_poison_effect);
			poison_hit = true;
		}
	}
}

with (o_enemy_battle_unit) {
	if (poisoned && !poison_hit) {
		global.enemy_poison_pos = irandom(sprite_get_width(s_action_meter));
		if (action_meter - 17 >= (global.enemy_poison_pos)) {
			script_execute(scr_battle_poison_effect);
			poison_hit = true;
		}
	}
}