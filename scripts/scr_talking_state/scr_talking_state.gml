///scr_talking_state()
image_speed = 0;
image_index = 0;

// Check for dialog
if(!instance_exists(obj_textbox)) {
	if (myName == "Jane") {
		state = scr_move_state;
	} else if (wander) {
		state = scr_wander_state;
	} else {
		state = scr_wait_state;
	}
}