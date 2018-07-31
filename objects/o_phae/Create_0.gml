/// @description  Initailize Phae
event_inherited();
image_speed = 0;

// Set the dialog object
dialog_object = o_dialog;

// Create the portrait array
portrait[PORTRAIT_NEUTRAL] = s_phae_portrait_neutral;

// Create the sprite array
sprite[RIGHT] = s_phae_walk_right;
sprite[UP] = s_phae_walk_up;
sprite[LEFT] = s_phae_walk_left;
sprite[DOWN] = s_phae_walk_down;

// Dialog
var i = 0;
text[i++] = "Hey Jane!";
text[i++] = "How are you today?";