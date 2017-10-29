///scr_action_option_info()
var xx = x;
var yy = y;

if (instance_exists(parent)) {
	with (parent) {
		with (o_player_stats) {
			var sad_action = ds_list_find_value(sad_actions, other.index);
			var content_action = ds_list_find_value(content_actions, other.index);
			var angry_action = ds_list_find_value(angry_actions, other.index);
			
			if (o_stance_action_list_ui.option[? "text"] == "Sad Actions") {
				if (sad_action != undefined) {
					var message = scr_create_message(xx, yy, sad_action[? "info"]);
				}
			} else if (o_stance_action_list_ui.option[? "text"] == "Content Actions") {
				if (content_action != undefined) {
					var message = scr_create_message(xx, yy, content_action[? "info"]);
				}
			} else if (o_stance_action_list_ui.option[? "text"] == "Angry Actions") {
				if (angry_action != undefined) {
					var message = scr_create_message(xx, yy, angry_action[? "info"]);
				}
			} else {
				exit;
			}
		}
	}
}

// Hide
visible = false;
child = message;
child.parent = id;
enabled = false;