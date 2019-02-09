/// @description  Go to the next room

if (need_input) {
	if (state != scr_wait_state && o_input.action && facing = other.facing) {
	    state = scr_wait_state;
	    var transition = instance_create_depth(0, 0, 0, o_fade_transition);
		//transition.transition_length = 0.5;
	    transition.next_room = other.next_room;
	    scr_audio_play_sound_effect(other.sound, false, 40);
	}
} else if (state != scr_wait_state && facing = other.facing) {
		state = scr_wait_state;
	    var transition = instance_create_depth(0, 0, 0, o_fade_transition);
		//transition.transition_length = 0.5;
	    transition.next_room = other.next_room;
	    scr_audio_play_sound_effect(other.sound, false, 40);
}