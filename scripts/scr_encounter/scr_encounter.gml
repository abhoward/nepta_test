///scr_encounter()

// Exist cases
if (!instance_exists(obj_elizabeth) || !instance_exists(obj_random_encounters)) exit;

if (obj_random_encounters.on && !instance_exists(obj_battle_transition)) {
	obj_elizabeth.state = scr_elizabeth_wait_state;
	obj_elizabeth.persistent = false;
	instance_create_depth(0, 0, 1, obj_battle_transition);
	
	// Change the song
	scr_audio_set_next_song(a_battle_music, false);
}