///scr_heal_effect(args_list)
var args_list = argument0;
var amount = args_list[| 0];

// Heal the player
if (instance_exists(obj_player_stats)) {
	with (obj_player_stats) {
		stats[? "health"] = min(stats[? "health"] + amount, stats[? "maxhealth"]);
	}
}