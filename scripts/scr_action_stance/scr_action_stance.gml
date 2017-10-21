///scr_action_stance()
with (o_battle_unit) {
	if (sad_stance) {
		state = scr_battle_wait_sad_state;
		//o_battle.play = true;
	} else if (angry_stance) {
		state = scr_battle_wait_angry_state;
		//o_battle.play = true;
	} else if (content_stance) {
		state = scr_battle_wait_state;
		//o_battle.play = true;
	}
}

//Make the current unit defend
//stats_object.defend = true;
action_meter = max_action_meter / 2;

//scr_audio_play_sound_effect(a_defend, false, 70);