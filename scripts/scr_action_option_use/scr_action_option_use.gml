///scr_action_option_use()
with (o_player_battle_unit) {
	var action = stats_object.actions[| other.parent.index];
	if (o_action_list_ui.stance_enabled) {
		if (action[? "name"] == "Defend") {
			script_execute(asset_get_index(action[? "action"]));
		} else {
			state = asset_get_index(action[? "action"]);
		}
	}  else if (!o_action_list_ui.stance_enabled) {
		scr_create_message_at_view_center(action[? "message"]);
	}
}

// Destroy the action list
with (parent) {
	instance_destroy();
}