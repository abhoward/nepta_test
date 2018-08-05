/// @description Insert description here
// You can write your code in this editor

// Choose if we're moving on the x axis or y axis
choosex = choose(0, random_range(-xmax, xmax));

if (choosex == 0) {
	choosey = random_range(-ymax, ymax);
} else {
	choosey = 0;
}

targetx = max(sprite_height, x + choosex);
targety = max(sprite_width, y + choosey);

show_debug_message("targetx: " + string(targetx));
show_debug_message("targety: " + string(targety));

start_wander = true;

//while (place_meeting(targetx, targety, o_solid)) {
//	if (targetx != x) {
//		targetx -= targetx / 4;
//	} else {
//		targety -= targety / 4;
//	}
//}
	
// Face the target

	
//show_debug_message("targetx: " + string(targetx));
//show_debug_message("targety: " + string(targety));
//show_debug_message("x: " + string(x));
//show_debug_message("y: " + string(y));
	
// Move the character towards the target
//while (x != targetx || y != targety) {
//	show_debug_message("reaching target...");
//	x = approach(x, targetx, walk_spd);
//	y = approach(y, targety, walk_spd);
//	show_debug_message("x: " + string(x));
//	show_debug_message("y: " + string(y));
//}

//move_towards_point(targetx, targety, walk_spd);
	
// Reach the target
