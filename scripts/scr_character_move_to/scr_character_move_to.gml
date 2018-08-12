///@description move character to x, y position
///@arg character
///@arg x
///@arg y
///@arg relative?
///@arg speed
///@arg follow_view?
///@arg seconds_to_wait

var characters = argument0;
var xx = argument1;
var yy = argument2;
var relative = argument3;
var spd = argument4;
var view_follow = argument5;
var wait_seconds = argument6;
var cutscene = id;
var i = array_length_1d(characters) - 1;

repeat(i + 1) {
	// Make sure the character exists
	if (!instance_exists(characters[i])) {
		action++;
		exit;
	}

	if (instance_exists(o_view) && view_follow) {
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
				if (!scr_wait(wait_seconds, false) or (wait_seconds == 0)) {
					other.targetx = noone;
					other.targety = noone;
					
					if (i == 0) {
						action++;
					}
				}
			}
		}
	}
	i--;
}