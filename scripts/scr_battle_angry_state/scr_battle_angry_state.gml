///scr_battle_angry_state()
scr_battle_set_sprite(IDLE_ANGRY, 0);
depth = -1;

// AI
if (object_index == o_enemy_battle_unit) {
	// Check for attack and if the stats map doesn't exist
	if (ds_exists(stats, ds_type_map) && stats[? "health"] == draw_health) {
		// Make the enemy attack or defend
		var action_index = 0;
		if (o_player_battle_unit.action_meter > 60 && chance(0.8)) action_index = 1; // action_index of 1 means defend, 0 means attack
		if (chance(0.1)) action_index = 1;
		
		// Check for defend exception
		var action = actions[| action_index];
		if (action[? "name"] == "Defend") {
			script_execute(asset_get_index(action[? "action"]));
		} else {
			state = asset_get_index(action[? "action"]);
		}
	}
}