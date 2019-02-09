/// @description Trigger cutscene based on o_cutscene_trigger variables

if (state != scr_wait_state && other.cutscene != noone && dialogue_state == other.dialogue_trigger && room_state == other.room_trigger) {
	reset_dialogue_defaults();
	state = scr_wait_state;
	create_cutscene(other.cutscene);
	// might need to do cutscene = noone here but not sure yet
	
	if (other.only_once) {
		instance_destroy(other);
	}
}

if (!instance_exists(obj_textbox) && !instance_exists(o_cutscene_parent)) {
	state = scr_move_state;
}

