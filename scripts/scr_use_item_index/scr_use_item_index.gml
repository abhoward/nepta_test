///scr_use_item_index(item_index)
var item_index = argument0;

if (instance_exists(o_player_stats)) {
	with(o_player_stats) {
		// Find the item
		var item = ds_list_find_value(items, item_index);
		if (item != undefined) {
			// Check for exit case
			if (item[? "battle"] && room != r_battle) {
				// Show a message and exit
				scr_create_message_at_view_center("You cannot use this\nitem outside of battle.");
				with (other.parent) instance_destroy();
				with (other) instance_destroy();
				exit;
				
			}
				// Remove from the item number
				item_number[| item_index] --;
				
				if (item_number[| item_index] <= 0) {
					ds_list_delete(item_number, item_index);
					ds_list_delete(items, item_index);
				}
				
				// Use the item
				script_execute(asset_get_index(item[? "effect"]), item[? "arguments"]);
		}
	}
}