///scr_cutscene_destroy_object(object, fade, audio)
var object = argument0;
var fade = argument1;
var audio = argument2;

if (!instance_exists(object)) {
	action++;
	exit;
}

if (object.image_alpha > 0) {
	object.image_alpha -= fade;
} else if (object.image_alpha == 0) {
	instance_destroy(object);
	audio_play_sound(audio, 1, false);
	action++;
}
