///scr_stance_option_use()
with (o_player_battle_unit) {
	var stance = stats_object.stances[| other.parent.index];
	state = asset_get_index(stance[? "stance"]);
}

// Destroy the action list
with (parent) {
	instance_destroy();
}