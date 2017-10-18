///scr_stance_option_use()
with (o_player_battle_unit) {
	var stance = stats_object.stances[| other.parent.index];
	if (stance[? "name"] == "Sad") {
		sad_stance = true;
		angry_stance = false;
		normal_stance = false;
	} else if (stance[? "name"] == "Angry") {
		angry_stance = true;
		sad_stance = false;
		normal_stance = false;
	}
	state = asset_get_index(stance[? "stance"]);
}

// Destroy the action list
with (parent) {
	instance_destroy();
}