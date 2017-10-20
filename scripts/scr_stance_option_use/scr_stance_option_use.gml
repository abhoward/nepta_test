///scr_stance_option_use()
with (o_player_battle_unit) {
	var stance = stats_object.stances[| other.parent.index];
	if (stance[? "name"] == "Sad") {
		sad_stance = true;
		angry_stance = false;
		content_stance = false;
		action_meter = max_action_meter / 2;
	} else if (stance[? "name"] == "Angry") {
		angry_stance = true;
		sad_stance = false;
		content_stance = false;
		action_meter = max_action_meter / 2;
	} else if (stance[? "name"] == "Angry") {
		angry_stance = false;
		sad_stance = false;
		content_stance = true;
		action_meter = max_action_meter / 2;
	}
	state = asset_get_index(stance[? "stance"]);
}

// Destroy the action list
with (parent) {
	instance_destroy();
}