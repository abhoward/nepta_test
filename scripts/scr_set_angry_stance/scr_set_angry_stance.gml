///scr_set_sad_stance()
with (o_player_battle_unit) {
	sad_stance = false;
	angry_stance = true;
	content_stance = false;
	
	state = scr_battle_idle_angry_state;
	o_battle.play = true;
	show_debug_message("Play called from scr_set_angry_stance");
	action_meter = max_action_meter / 2;
}