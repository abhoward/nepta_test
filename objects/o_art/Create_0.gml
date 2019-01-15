/// @description  Initailize Art
event_inherited();
image_speed = 0;

// Create the portrait array
myName = "Art"
myPortrait = s_art_portrait;

// Create the sprite array
sprite[RIGHT] = s_art_walk_right;
sprite[UP] = s_art_walk_up;
sprite[LEFT] = s_art_walk_left;
sprite[DOWN] = s_art_walk_down;

state = scr_wait_state;