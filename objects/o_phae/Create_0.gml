/// @description  Initailize Phae
event_inherited();
image_speed = 0;

myName = "Phae"
myPortrait = s_phae_portrait;

// Create the sprite array
sprite[RIGHT] = s_phae_walk_right;
sprite[UP] = s_phae_walk_up;
sprite[LEFT] = s_phae_walk_left;
sprite[DOWN] = s_phae_walk_down;

state = scr_wait_state;