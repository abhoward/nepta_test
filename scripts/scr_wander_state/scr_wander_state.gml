//scr_wander()

show_debug_message("alarm0: " + string(alarm[0]));

// for if y is greater than targety or if x is less than targetx
var inst1 = collision_rectangle(targetx + 48, targety - 32, x - 16, y + 32, o_solid, false, true);
var inst2 = collision_rectangle(targetx + 48, targety - 32, x - 16, y + 32, o_wander_border, false, true);

// for if x is greater than targetx or if y is less than targety
var inst3 = collision_rectangle(targetx - 16, targety + 32, x + 48, y - 32, o_solid, false, true);
var inst4 = collision_rectangle(targetx - 16, targety + 32, x + 48, y - 32, o_wander_border, false, true);

if (alarm[0] == -1) {
	if (targetx > x || targety < y) {
		if (inst1 != noone  || inst2 != noone) {
			if (targetx > x) {
				if (targetx - (targetx / 4) > x) {
					targetx -= targetx / 4;
				} else {
					targetx = x;
				}
			} else if (targetx < x) {
				if (targetx + (targetx / 4) < x) {
					targetx += targetx / 4;
				} else {
					targetx = x;
				}
			} else if (targety > y) {
				if (targety - (targety / 4) > y) {
					targety -= targety / 4;
				} else {
					targety = y;
				}
			} else if (targety < y) {
				if (targety + (targety / 4) < y) {
					targety += targety / 4;
				} else {
					targety = y;
				}
			}
		} 
		else {
			can_approach = true;
		}
	} else if (targetx < x || targety > y) {
		if (inst3 != noone || inst4 != noone) {
			if (targetx > x) {
				if (targetx - (targetx / 4) > x) {
					targetx -= targetx / 4;
				} else {
					targetx = x;
				}
			} else if (targetx < x) {
				if (targetx + (targetx / 4) < x) {
					targetx += targetx / 4;
				} else {
					targetx = x;
				}
			} else if (targety > y) {
				if (targety - (targety / 4) > y) {
					targety -= targety / 4;
				} else {
					targety = y;
				}
			} else if (targety < y) {
				if (targety + (targety / 4) < y) {
					targety += targety / 4;
				} else {
					targety = y;
				}
			}
		}
		else {
			can_approach = true;
		}
	} else {
		can_approach = true;
	}
	
	var dir = point_direction(x, y, targetx, targety);
	facing = scr_get_facing(dir);
	
	if (can_approach) {
		x = approach(x, targetx, walk_spd);
		y = approach(y, targety, walk_spd);
	}
	
	image_speed = 0.2;
	
	if (point_distance(x, y, targetx, targety) < walk_spd) {
		targetx = noone;
		targety = noone;
		
		image_index = 0;
		image_speed = 0;
		
		alarm[0] = (random_range(2, 5) * room_speed);
	}
}