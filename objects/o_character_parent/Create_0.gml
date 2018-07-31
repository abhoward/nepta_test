/// @description  Initialize the character parent
event_inherited();
targetx = noone;
targety = noone;

facing = RIGHT;

// Create the sprite array
sprite[RIGHT] = s_jane_walk_right;
sprite[UP] = s_jane_walk_up;
sprite[LEFT] = s_jane_walk_left;
sprite[DOWN] = s_jane_walk_down;
sprite[WAKE] = s_jane_wake_up;