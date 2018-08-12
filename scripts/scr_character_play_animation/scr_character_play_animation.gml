///@description play animation that character is currently idle in
///@arg character
///@arg animation
///@arg animation_speed

var character = argument0;
var anim = argument1;
var anim_spd = argument2;

if (!instance_exists(character)) {
	action++;
	exit;
}

with(character) {
	if (image_speed == 0) {
		object_set_sprite(character, anim);
		image_speed = anim_spd;
	}
}

action++;