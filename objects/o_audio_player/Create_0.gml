/// @description  Initialize the audio player
fade = true;
fade_spd = .02;

// Create the music emitter
music_emitter = audio_emitter_create();
music_volume = 0;
music_max_volume = 1;

// Create the sound emitter
sfx_emitter = audio_emitter_create();
sfx_volume = .5;
sfx_max_volume = .5;

// Store current song, previous song, and next song
previous_song = noone;
current_song = noone;
next_song = a_town_music;

