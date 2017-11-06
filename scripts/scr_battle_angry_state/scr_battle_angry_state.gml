///scr_battle_angry_state()
scr_battle_set_sprite(IDLE_ANGRY, 0);
depth = -1;

// AI
if (object_index == o_enemy_battle_unit) {
	// Check for attack and if the stats map doesn't exist
	if (ds_exists(stats, ds_type_map) && stats[? "health"] == draw_health) {
		if (name == "spider") {
			scr_spider_angry_ai();
		} else if (name == "gargoyle") {
			scr_gargoyle_angry_ai();
		}
		//script_execute("scr_" + name + "_angry_ai");
	}
}