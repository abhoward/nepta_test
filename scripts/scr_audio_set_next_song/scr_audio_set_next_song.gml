///scr_audio_set_next_song(next_song, fade)
var next_song = argument0;
var fade = argument1;

if (instance_exists(obj_audio_player)) {
	obj_audio_player.fade = fade;
	obj_audio_player.next_song = next_song;
}