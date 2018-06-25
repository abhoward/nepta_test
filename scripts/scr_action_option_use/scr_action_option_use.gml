///scr_action_option_use()
with (o_player_battle_unit) {
	if (o_stance_action_list_ui.option[? "text"] == "Sad") {
		if (sad_stance) {
			var action = stats_object.sad_actions[| other.parent.index];
			if (action[? "name"] == "Confuse" && confuse_cooldown > 0) {
				scr_create_message_at_view_center(action[? "cooldown"] + string(confuse_cooldown));
			} else if (action[? "name"] == "Cry" && poison_cooldown > 0) {
				scr_create_message_at_view_center(action[? "cooldown"] + string(poison_cooldown));
			} else { 
				state = asset_get_index(action[? "action"]);
			}
		} else if (!sad_stance) {
			var action = stats_object.sad_actions[| other.parent.index];
			scr_create_message_at_view_center(action[? "message"]);
		}
	} else if (o_stance_action_list_ui.option[? "text"] == "Angry") {
		if (angry_stance) {
			var action = stats_object.angry_actions[| other.parent.index];
			if (action[? "name"] == "Rage" && rage_cooldown > 0) {
				scr_create_message_at_view_center(action[? "cooldown"] + string(rage_cooldown));
			} else if (action[? "name"] == "Cripple" && cripple_cooldown > 0) {
				scr_create_message_at_view_center(action[? "cooldown"] + string(cripple_cooldown));
			} else { 
				state = asset_get_index(action[? "action"]);
			}
		} else if (!angry_stance) {
			var action = stats_object.angry_actions[| other.parent.index];
			scr_create_message_at_view_center(action[? "message"]);
		}
	} else if (o_stance_action_list_ui.option[? "text"] == "Content") {
		if (content_stance) {
			var action = stats_object.content_actions[| other.parent.index];
			if (action[? "name"] == "Heal" && heal_cooldown > 0) {
				scr_create_message_at_view_center(action[? "cooldown"] + string(heal_cooldown));
			}
			else {
				state = asset_get_index(action[? "action"]);
			}
		} else if (!content_stance) {
			var action = stats_object.content_actions[| other.parent.index];
			scr_create_message_at_view_center(action[? "message"]);
		}
	} else {
		scr_create_message_at_view_center("Error: option text does not match.\nPlease edit scr_action_option_use.");
	}
	//if (action[? "name"] == "Defend") {
	//	script_execute(asset_get_index(action[? "action"]));
	//} else {
	//	state = asset_get_index(action[? "action"]);
	//}
}

// Destroy the action list
with (parent) {
	instance_destroy();
	instance_destroy(o_stance_action_list_ui);
	instance_destroy(o_action_list_ui);
}