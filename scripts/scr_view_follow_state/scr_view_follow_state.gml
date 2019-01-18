///scr_view_follow_state()

// set the target
if (instance_exists(o_jane)) {
	target[? "x"] = clamp(o_jane.x + 8, view_wview[0] / 2, room_width - (view_wview[0] / 2));
	target[? "y"] = clamp(o_jane.y + 8, view_hview[0] / 2, room_height - (view_hview[0] / 2));
}