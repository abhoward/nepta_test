///scr_character_face_direction(character, facing, wait_seconds)
var characters = argument0;
var facing = argument1;
var wait_seconds = argument2;
var i = array_length_1d(characters) - 1;

repeat(i + 1) {
	if (!instance_exists(characters[i])) {
		action++;
		exit;
	}

	characters[i].image_index = 0;

	characters[i].facing = facing[i];
	
	//if (i == 0) {
	//	action++;
	//}
}

scr_wait(wait_seconds, true);