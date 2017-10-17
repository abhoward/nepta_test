///scr_stance_option_use()
with (o_player_battle_unit) {
	var stance = stats_object.stances[| other.parent.index];
	if (stance[? "name"] == "Sad") {
		global.sad_stance = true;
		global.angry_stance = false;
	} else if (stance[? "name"] == "Angry") {
		global.angry_stance = true;
		global.sad_stance = false;
	}
	state = asset_get_index(stance[? "stance"]);
}

// Destroy the action list
with (parent) {
	instance_destroy();
}