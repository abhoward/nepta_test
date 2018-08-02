///scr_character_move_to(character, x, y, relative, speed, wait_seconds)
var characters = argument0;
var xx = argument1;
var yy = argument2;
var relative = argument3;
var spd = argument4;
var wait_seconds = argument5;
var cutscene = id;
var i = array_length_1d(characters) - 1;

repeat(i + 1) {
	// Make sure the character exists
	if (!instance_exists(characters[i])) {
		action++;
		exit;
	}

	if (instance_exists(o_view)) {
		o_view.target[? "x"] = characters[i].x;
		o_view.target[? "y"] = characters[i].y;
	}

	with (characters[i]) {
		// Create the target
		if (targetx == noone && targety == noone) {
			if (relative[i]) {
				targetx = x + xx[i];
				targety = y + yy[i];
			} else {
				targetx = xx[i];
				targety = yy[i];
			}
		
			// Face the target
			var dir = point_direction(x, y, targetx, targety);
			facing = scr_get_facing(dir);
			image_speed = 0.2;
		}
	
		// Move the character towards the target
		x = approach(x, targetx, spd[i]);
		y = approach(y, targety, spd[i]);
	
		// Reach the target
		if (x == targetx && y == targety) {
			image_speed = 0;
			image_index = 0;
			with (cutscene) {
				
				if (i == 0) {
					action++;
				}
				
				if (!scr_wait(wait_seconds, false)) {
					other.targetx = noone;
					other.targety = noone;
				}
			}
		}
	}
}