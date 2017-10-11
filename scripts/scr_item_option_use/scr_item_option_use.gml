///scr_item_option_use()

if (instance_exists(parent)) {
	with (parent) {
		// Are we in a battle?
		if (instance_exists(o_player_battle_unit)) {
			o_player_battle_unit.state = scr_battle_use_item_state;
			o_player_battle_unit.item_index = index;
			instance_destroy();	
		} else {
			// Use the item
			scr_use_item_index(index);
			
			// Destroy the menu
			//if (instance_exists(o_menu_ui)) {
			//	with (o_item_list_ui) instance_destroy();
			//}
			
			ds_list_destroy(options);
			
			// Update the items list
			options = scr_create_items_option_list();
			index = min(index, ds_list_size(options) - 1);
		}
	}
}