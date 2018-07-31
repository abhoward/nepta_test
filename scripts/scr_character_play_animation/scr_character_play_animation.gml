///scr_character_play_animation(character)
var character = argument0;
var anim = argument1;

if (!instance_exists(character)) {
	action++;
	exit;
}

with(character) {
	if (image_speed == 0) {
		object_set_sprite(character, anim);
		image_speed = 0.2;
	}
}

action++;