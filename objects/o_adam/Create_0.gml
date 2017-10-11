/// @description  Initailize Adam
event_inherited();
image_speed = 0;

// Set the dialog object
dialog_object = o_dialog;

// Portrait
portrait = s_adam_portrait;

// Create the sprite array
sprite[RIGHT] = s_adam;
sprite[UP] = s_adam;
sprite[LEFT] = s_adam;
sprite[DOWN] = s_adam;

// Dialog
var i = 0;
text[i++] = "Hey Elizabeth!";
text[i++] = "How are you today?";

