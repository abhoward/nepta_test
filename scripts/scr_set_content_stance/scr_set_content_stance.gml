///scr_set_sad_stance()

with (o_player_battle_unit) {
	sad_stance = false;
	angry_stance = false;
	content_stance = true;
	
	state = scr_battle_idle_state;
	o_battle.play = true;
	action_meter = max_action_meter / 2;
}