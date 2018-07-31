///scr_character_face_direction(character, facing, wait_seconds)
var character = argument0;
var facing = argument1;
var wait_seconds = argument2;

if (!instance_exists(character)) {
	action++;
	exit;
}

character.image_index = 0;

character.facing = facing;
scr_wait(wait_seconds);