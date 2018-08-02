/// @description  Initailize Rose
event_inherited();
image_speed = 0;

myName = "Rose"
myPortrait = s_rose_portrait;

// Create the sprite array
sprite[RIGHT] = s_rose_right;
sprite[UP] = s_rose_right;
sprite[LEFT] = s_rose_left;
sprite[DOWN] = s_rose_left;

// Dialog
var i = 0;
text[i++] = "Hey Jane!";
text[i++] = "How are you today?";