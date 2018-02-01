///scr_elizabeth_move_state()

/// @description Insert description here

// Movement
var hspd = (o_input.right - o_input.left) * spd;
var vspd = (o_input.down - o_input.up) * spd;

// move
if (!scr_move(hspd, vspd, true)) {
	scr_move_intended_direction(hspd, vspd, 10);
}

// Check for menu
if (o_input.menu) {
	if (!instance_exists(o_menu_ui)) {
		instance_create_depth(16, 16, 0, o_menu_ui);
		exit;
	}
}

// Check for random encounter
if (!instance_exists(o_last_encounter)) {
	instance_create_depth(x, y, 1, o_last_encounter);
	//o_last_encounter.distance = random_range(50, 200);
	o_last_encounter.distance = 9999999; // changed for testing purposes
	show_debug_message("When o_last_encounter doesn't exist: " + string(o_last_encounter.distance));
} else {
	if(point_distance(x, y, o_last_encounter.x, o_last_encounter.y) >= o_last_encounter.distance) {
		o_last_encounter.distance = random_range(50, 200);
		o_last_encounter.x = x;
		o_last_encounter.y = y;
		scr_encounter();
	show_debug_message(string(o_last_encounter.distance));
	}
}

// Get the direction we're facing
var xdir = lengthdir_x(8, facing * 90);
var ydir = lengthdir_y(8, facing * 90);

// Check for interactable object
scr_activate_interactable_object(xdir, ydir);