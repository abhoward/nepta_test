/// @description  Initailize Horace
event_inherited();
image_speed = 0;

// Set the dialog object
dialog_object = o_dialog;

// Create the portrait array
portrait[PORTRAIT_NEUTRAL] = s_horace_portrait_neutral;

// Create the sprite array
sprite[RIGHT] = s_horace_right;
// sprite[UP] = s_art;
sprite[LEFT] = s_horace_left;
// sprite[DOWN] = s_art;

// Dialog
var i = 0;
text[i++] = "Hey Jane!";
text[i++] = "How are you today?";