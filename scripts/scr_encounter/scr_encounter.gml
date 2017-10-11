///scr_encounter()

// Exist cases
if (!instance_exists(o_elizabeth) || !instance_exists(o_random_encounters)) exit;

if (o_random_encounters.on && !instance_exists(o_battle_transition)) {
	o_elizabeth.state = scr_elizabeth_wait_state;
	o_elizabeth.persistent = false;
	instance_create_depth(0, 0, 1, o_battle_transition);
	
	// Change the song
	scr_audio_set_next_song(a_battle_music, false);
}