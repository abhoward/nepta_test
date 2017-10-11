/// @description Initialize the view
event_inherited();

// Set the view state
state = scr_view_follow_elizabeth_state;

// update target position
target[? "x"] = x;
target[? "y"] = y;

// move the view
view_xview[0] = x - view_wview[0] / 2;
view_yview[0] = y - view_hview[0] / 2;