///scr_battle_idle_state()
scr_battle_set_sprite(IDLE, 0);

depth = 0;

//if (o_player_battle_unit.content_stance == true) {
//	o_battle.;
//}

// Check to see if battle timeline is running
if (o_battle.play && instance_exists(stats_object)) {
	// Add to action meter
	action_meter = min(action_meter + (stats_object.stats[? "speed"] + stats_object.level) / 10, max_action_meter);
	
	// If our action meter is full change to action state
	if (action_meter == max_action_meter) {
		state = scr_battle_action_state;
		o_battle.play = false;
		action_meter = 0;
		//poison_hit = false;
		//confuse_hit = false;
		poison_cooldown--;
		rage_cooldown--;
		confuse_cooldown--;
		cripple_cooldown--;
		heal_cooldown--;
		//stats_object.defend = false;
	}
}