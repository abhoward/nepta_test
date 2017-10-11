///scr_action_option_info()
var xx = x;
var yy = y;

if (instance_exists(parent)) {
	with (parent) {
		with (o_player_stats) {
			var action = ds_list_find_value(actions, other.index);
			if (action != undefined) {
				var message = scr_create_message(xx, yy, action[? "info"]);
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