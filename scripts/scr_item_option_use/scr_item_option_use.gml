///scr_item_option_use()

if (instance_exists(parent)) {
	with (parent) {
		// Are we in a battle?
		if (instance_exists(obj_player_battle_unit)) {
			obj_player_battle_unit.state = scr_battle_use_item_state;
			obj_player_battle_unit.item_index = index;
			instance_destroy();	
		} else {
			// Use the item
			scr_use_item_index(index);
			
			// Destroy the menu
			if (instance_exists(obj_menu_ui)) {
				with (obj_menu_ui) instance_destroy();
			}
		}
	}
}