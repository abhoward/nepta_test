/// @description Update view position
view_xview[0] = (x - view_wview[0] / 2) + irandom_range(-screenshake, screenshake);
view_yview[0] = (y - view_hview[0] / 2) + irandom_range(-screenshake, screenshake);
camera_set_view_pos(view_camera[0], view_xview[0], view_yview[0]);

// move view towards target point
x = lerp(x, target[? "x"], spd);
y = lerp(y, target[? "y"], spd);
//show_debug_message("view moving to target");