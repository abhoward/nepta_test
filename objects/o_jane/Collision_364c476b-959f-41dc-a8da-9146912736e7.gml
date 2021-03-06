/// @description Interact with object
if (state != scr_wait_state && o_input.action && facing = other.facing) {
	reset_dialogue_defaults();
    state = scr_wait_state;
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

if (!instance_exists(obj_textbox) && !instance_exists(o_cutscene_parent)) {
	state = scr_move_state;
}