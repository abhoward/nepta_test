///scr_cutscene_destroy_object(audio, wait_seconds)
var audio = argument0;
var wait_seconds = argument1;
var i = array_length_1d(audio) - 1;

repeat(i + 1) {
	if (audio != -1) {
		if (!scr_wait(wait_seconds[i], false) or (wait_seconds[i] == 0)) {
			audio_play_sound(audio[i], 1, false);
			
			if (i == 0) {
				action++;
			}
		}
	}
	i--;
}