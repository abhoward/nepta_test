///scr_battle_death_state()
image_speed = 0;
hitflash = true;
if (image_alpha > 0) {
	image_alpha -= 0.4;
} else {
	instance_destroy();
	if (object_index == o_player_battle_unit) {
		room_goto(r_game_over);
		scr_audio_set_next_song(a_graveyard_music, true);
	}
}