///scr_set_sad_stance()
with (o_battle_unit) {
	sad_stance = true;
	angry_stance = false;
	content_stance = false;
	
	state = scr_battle_idle_sad_state;
	o_battle.play = true;
	show_debug_message("Play called from scr_set_sad_stance");
	action_meter = max_action_meter / 2;
}