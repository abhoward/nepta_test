///scr_action_defend()
with (o_battle_unit) {
	state = scr_battle_wait_state;
}

// Make the current unit defend
stats_object.defend = true;
action_meter = max_action_meter / 2;

scr_audio_play_sound_effect(a_defend, false, 70);