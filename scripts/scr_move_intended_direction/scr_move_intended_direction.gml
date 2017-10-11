///scr_move_intended_direction(hspd, vspd, distance)
var hspd = argument0;
var vspd = argument1;
var dis = argument2;

// Check for a wall
var wall = instance_place(x + hspd, y + vspd, obj_solid);

// Make sure there is a wall
if (wall) {
	switch (facing) {
		case UP:
		case DOWN:
		if (hspd != 0) exit; // No need to slide if we already have a horizontal speed
			for (var i = 0; i < dis; i += spd) {
				// Moving right
				if (!place_meeting(x + i, y + vspd, obj_solid)) {
					scr_move(spd, 0, false);
					break;
				}
				
				// Moving left
				if (!place_meeting(x - i, y + vspd, obj_solid)) {
					scr_move(-spd, 0, false);
					break;
				}
			} 
			break;
		
		case RIGHT:
		case LEFT:
			if (vspd != 0) exit; // No need to slide if we already have a vertical speed
			for (var i = 0; i < dis; i += spd) {
				// Moving up
				if (!place_meeting(x + hspd, y - i, obj_solid)) {
					scr_move(0, -spd, false);
					break;
				}
				
				// Moving down
				if (!place_meeting(x + hspd, y + i, obj_solid)) {
					scr_move(0, spd, false);
					break;
				}
			}
			break;
	}
}