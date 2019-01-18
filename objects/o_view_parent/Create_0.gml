/// @description  Initialize the view parent
// Create the target
target = ds_map_create();
//target[? "x"] = 0;
//target[? "y"] = 0;
target[? "x"] = clamp(o_jane.x + 8, view_wview[0] / 2, room_width - (view_wview[0] / 2));
target[? "y"] = clamp(o_jane.y + 8, view_hview[0] / 2, room_height - (view_hview[0] / 2));

// Create screenshake
screenshake = 0;

// Speed
spd = .1;