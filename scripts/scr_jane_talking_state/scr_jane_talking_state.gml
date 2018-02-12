///scr_jane_talking_state()
image_speed = 0;
image_index = 0;

// Check for dialog
if(!instance_exists(o_dialog)) {
	state = scr_jane_move_state;
}