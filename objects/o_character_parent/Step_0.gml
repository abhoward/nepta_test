event_inherited();

depth = -y;

// Update the sprite
sprite_index = sprite[facing];

// Make the character move if wander is set to true
if (wander) {
	alarm[0] = (random_range(2, 5) * room_speed);
	wander = false;
}
	//move_towards_point(targetx, targety, walk_spd);
	
if (start_wander) {
	var dir = point_direction(x, y, targetx, targety);
	facing = scr_get_facing(dir);
	
	if (targetx > x || targety < y) {
		if (collision_rectangle(targetx + 48, targety - 32, x - 16, y + 32, o_solid, false, true)) {
			show_debug_message("inside collision_rectangle1");
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
			} else if (targety > y) {
				if (targety + (targety / 4) < y) {
					targety += targety / 4;
				} else {
					targety = y;
				}
			}
		} else {
			can_approach = true;
		}
	} else if (targetx < x || targety > y) {
		if (collision_rectangle(targetx - 16, targety + 32, x + 48, y - 32, o_solid, false, true)) {
			show_debug_message("inside collision_rectangle2");
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
			} else if (targety > y) {
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
	
	if (can_approach) {
		show_debug_message("approaching...");
		x = approach(x, targetx, walk_spd);
		y = approach(y, targety, walk_spd);
	}
	
	image_speed = 0.2;
	
	if (point_distance(x, y, targetx, targety) < walk_spd) {
		show_debug_message("target reached");
		targetx = noone;
		targety = noone;
		
		image_speed = 0;
		image_index = 0;
			
		wander = true;
		start_wander = false;
		can_approach = false;
	}
}