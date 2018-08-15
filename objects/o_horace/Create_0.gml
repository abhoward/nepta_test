/// @description  Initailize Horace
event_inherited();
image_speed = 0;

myName = "Horace"
myPortrait = s_horace_portrait;

// Create the sprite array
sprite[RIGHT] = s_horace_walk_right;
sprite[UP] = s_horace_walk_up;
sprite[LEFT] = s_horace_walk_left;
sprite[DOWN] = s_horace_walk_down;

state = scr_wait_state;