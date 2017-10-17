///scr_stance_option_info()
var xx = x;
var yy = y;

if (instance_exists(parent)) {
	with (parent) {
		with (o_player_stats) {
			var stance = ds_list_find_value(stances, other.index);
			if (stance != undefined) {
				var message = scr_create_message(xx, yy, stance[? "info"]);
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