/// @description Interact with object

/// @description  Go to the next room
if (state != scr_jane_wait_state && o_input.action && facing = other.facing) {
	//reset_dialogue_defaults();
    state = scr_jane_wait_state;
	create_textevent(
		other.dialog_array, 
		other.speaker,
		other.effects,
		other.txt_speed,
		other.dialog_types,
		other.next_lines,
		other.change_vars,
		other.text_col,
		other.emotions,
		other.emotes
	)
}

if (!instance_exists(obj_textbox)) {
	state = scr_jane_move_state;
}