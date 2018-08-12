/// @description  Initailize Gwen
event_inherited();
image_speed = 0;

myName = "Gwen"
myPortrait = s_gwen_portrait;

// Create the sprite array
sprite[RIGHT] = s_gwen_right;
sprite[UP] = s_gwen_right;
sprite[LEFT] = s_gwen_left;
sprite[DOWN] = s_gwen_left;

state = scr_wait_state;