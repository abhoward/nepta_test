/// @description Initialize the view
event_inherited();
show_debug_message("view created");

// Set the view state
state = scr_view_follow_state;

// update target position
//target[? "x"] = x;
//target[? "y"] = y;
scr_cutscene_fade_out(1, 0.2);
target[? "x"] = clamp(o_jane.x + 8, view_wview[0] / 2, room_width - (view_wview[0] / 2));
target[? "y"] = clamp(o_jane.y + 8, view_hview[0] / 2, room_height - (view_hview[0] / 2));
scr_cutscene_fade_in(0, 0.2);
//// move the view
//view_xview[0] = x - view_wview[0] / 2;
//view_yview[0] = y - view_hview[0] / 2;