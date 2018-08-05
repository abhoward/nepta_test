event_inherited();

depth = -y;

// Update the sprite
sprite_index = sprite[facing];

// Make the character move if wander is set to true
if (wander) {
	alarm[0] = 5 * room_speed;
	wander = false;
}
	//move_towards_point(targetx, targety, walk_spd);
	
if (start_wander) {
	while (place_meeting(targetx, targety, o_solid)) {
		show_debug_message("inside place_meeting");
		if (targetx != x) {
			targetx -= targetx / 4;
		} else {
			targety -= targety / 4;
		}
	}
	
	if (!place_meeting(targetx, targety, o_solid)) {
		show_debug_message("approaching...");
		x = approach(x, targetx, walk_spd);
		y = approach(y, targety, walk_spd);
	}
	
	var dir = point_direction(x, y, targetx, targety);
	facing = scr_get_facing(dir);
	image_speed = 0.2;
	
	if (point_distance(x, y, targetx, targety) < walk_spd) {
		show_debug_message("target reached");
		targetx = noone;
		targety = noone;
		
		image_speed = 0;
		image_index = 0;
			
		wander = true;
		start_wander = false;
	}
}