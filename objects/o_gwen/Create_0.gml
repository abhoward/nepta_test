/// @description  Initailize Gwen
event_inherited();
image_speed = 0;

myName = "Gwen"
myPortrait = s_gwen_portrait;

// Create the sprite array
sprite[RIGHT] = s_gwen_walk_right;
sprite[UP] = s_gwen_walk_up;
sprite[LEFT] = s_gwen_walk_left;
sprite[DOWN] = s_gwen_walk_down;

state = scr_wait_state;