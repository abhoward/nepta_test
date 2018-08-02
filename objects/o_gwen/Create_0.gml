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

// Dialog
var i = 0;
text[i++] = "Hey Jane!";
text[i++] = "How are you today?";