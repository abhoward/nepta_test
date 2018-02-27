/// @description  Initailize Art
event_inherited();
image_speed = 0;

// Set the dialog object
dialog_object = o_dialog;

// Portrait
portrait = s_art_portrait;

// Create the sprite array
sprite[RIGHT] = s_art;
sprite[UP] = s_art;
sprite[LEFT] = s_art;
sprite[DOWN] = s_art;

// Dialog
var i = 0;
text[i++] = "Hey Jane!";
text[i++] = "How are you today?";