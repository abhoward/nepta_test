///scr_battle_use_item_state()
// Enemies can't use items
if (object_index != o_player_battle_unit) {
	state = scr_battle_wait_state;
	exit;
}

// Change sprites
scr_change_sprites(s_battle_elizabeth_use_item, 0, 0.25);

if (animation_hit_frame(0)) {
	// Set the view state
	o_battle_view.target[? "x"] = xstart + 64 * image_xscale;
	o_battle_view.state = scr_battle_view_focus_state;
}

// Use the item
if (animation_hit_frame(5)) {
	scr_use_item_index(item_index);
}

// Return to the idle state
if (animation_end()) {
	with (o_battle_unit) {
		state = scr_battle_wait_state;
	}
	
	o_battle_view.state = scr_battle_view_idle_state;
}

