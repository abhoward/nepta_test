///scr_character_move_to(character, x, y, relative, speed, wait_seconds)
var character = argument0;
var xx = argument1;
var yy = argument2;
var relative = argument3;
var spd = argument4;
var wait_seconds = argument5;
var cutscene = id;

// Make sure the character exists
if (!instance_exists(character)) {
	action++;
	exit;
}

if (instance_exists(obj_view)) {
	obj_view.target[? "x"] = character.x;
	obj_view.target[? "y"] = character.y;
}

with (character) {
	// Create the target
	if (targetx == noone && targety == noone) {
		if (relative) {
			targetx = x + xx;
			targety = y + yy;
		} else {
			targetx = xx;
			targety = yy;
		}
		
		// Face the target
		var dir = point_direction(x, y, targetx, targety);
		facing = scr_get_facing(dir);
		image_speed = 0.2;
	}
	
	// Move the character towards the target
	x = approach(x, targetx, spd);
	y = approach(y, targety, spd);
	
	// Reach the target
	if (x == targetx && y == targety) {
		image_speed = 0;
		image_index = 0;
		with (cutscene) {
			if (!scr_wait(wait_seconds)) {
				other.targetx = noone;
				other.targety = noone;
			}
		}
	}
}