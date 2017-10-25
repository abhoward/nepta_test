///scr_attack_effect(args_list)
var args_list = argument0;
var amount = args_list[| 0];

// Increase the players attack
with (o_player_battle_unit) {
	if (poisoned) {
		poisoned = false;
		poison_hit = false;
		poison_created = false;
		instance_destroy(o_player_poison_line);
	}
}