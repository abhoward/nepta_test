///@description choose animation for character to be idle in
///@arg characters
///@arg facing
///@arg seconds_to_wait

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
	
	if (!scr_wait(wait_seconds, false)) {
		if (i == 0) {
			action++;
		}
		
		i--;
	}
}