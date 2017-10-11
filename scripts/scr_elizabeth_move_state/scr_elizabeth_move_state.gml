///scr_elizabeth_move_state()

/// @description Insert description here

// Movement
var hspd = (obj_input.right - obj_input.left) * spd;
var vspd = (obj_input.down - obj_input.up) * spd;

// move
if (!scr_move(hspd, vspd, true)) {
	scr_move_intended_direction(hspd, vspd, 10);
}

// Check for menu
if (obj_input.back) {
	if (!instance_exists(obj_menu_ui)) {
		instance_create_depth(16, 16, 0, obj_menu_ui);
		exit;
	}
}

// Check for random encounter
if (!instance_exists(obj_last_encounter)) {
	instance_create_depth(x, y, 1, obj_last_encounter);
	obj_last_encounter.distance = random_range(32, room_width / 2);	
} else {
	if(point_distance(x, y, obj_last_encounter.x, obj_last_encounter.y) >= obj_last_encounter.distance) {
		obj_last_encounter.distance = random_range(32, room_width / 2);
		obj_last_encounter.x = x;
		obj_last_encounter.y = y;
		scr_encounter();
	}
}

// Get the direction we're facing
var xdir = lengthdir_x(8, facing * 90);
var ydir = lengthdir_y(8, facing * 90);

// Check for interactable object
scr_activate_interactable_object(xdir, ydir);