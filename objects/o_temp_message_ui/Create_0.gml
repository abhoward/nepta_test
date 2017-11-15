/// @description  Initialize the message ui
event_inherited();
width = 0;
height = 0;
cutscene = noone;

// Create the message
message = "";

// Close message after certain time
alarm[0] = 2 * room_speed;