///scr_item_option_info
if (instance_exists(parent)) {
	with (obj_player_stats) {
		var item = ds_list_find_value(items, other.parent.index);
		if (item != undefined) {
			var message = scr_create_message(other.x, other.y, item[? "info"]);
		} else {
			exit;
		}
	}
}

// Hide the parent
visible = false;
child = message;
child.parent = id;
enabled = false;