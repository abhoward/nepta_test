///scr_action_stance()
with (o_battle_unit) {
	if (sad_stance) {
		state = scr_battle_wait_sad_state;
	} else if (angry_stance) {
		state = scr_battle_wait_angry_state;
	} else if (content_stance) {
		state = scr_battle_wait_state;
	}
}

// Make the current unit defend
stats_object.defend = true;
action_meter = max_action_meter / 2;

//scr_audio_play_sound_effect(a_defend, false, 70);