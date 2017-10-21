///scr_action_option_use()
with (o_player_battle_unit) {
	var action = stats_object.actions[| other.parent.index];
	if (action[? "name"] == "Cry" && (content_stance || angry_stance)) {
		scr_create_message_at_view_center(action[? "message"]);
	} else if (action[? "name"] == "Rage" && (content_stance || sad_stance)) {
		scr_create_message_at_view_center(action[? "message"]);
	} else {
		state = asset_get_index(action[? "action"]);
		//if (action[? "name"] == "Defend") {
		//	script_execute(asset_get_index(action[? "action"]));
		//} else {
		//	state = asset_get_index(action[? "action"]);
		//}
	}
}

// Destroy the action list
with (parent) {
	instance_destroy();
}