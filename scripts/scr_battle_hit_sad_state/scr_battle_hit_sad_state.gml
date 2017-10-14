///scr_battle_hit_sad_state()
scr_battle_set_sprite(HIT_SAD, 0);

// Move the player based on the position in the animation
var input = (image_index / image_number) * pi;
x = xstart - sin(input) * 32 * image_xscale;

// check for death
if (abs(x - xstart) > 24 && stats_object.stats[? "health"] <= 0) {
	state = scr_battle_death_state;
}

// Return to the wait state
if (animation_end()) {
	state = scr_battle_wait_sad_state;
	
	// Set the view state
	o_battle_view.state = scr_battle_view_idle_state;
	
	x = xstart;
}