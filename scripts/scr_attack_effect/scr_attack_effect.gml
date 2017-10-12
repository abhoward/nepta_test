///scr_attack_effect(args_list)
var args_list = argument0;
var amount = args_list[| 0];

// Increase the players attack
if (instance_exists(o_player_stats)) {
	with (o_player_stats) {
		stats[? "attack"] += stats[? "attack"] + amount;
	}
}