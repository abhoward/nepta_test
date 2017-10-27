/// @description  Initialize the action ui
event_inherited();
width = 56;
height = 40;

// Create the options list
options = ds_list_create();
var option_index = 0;
options[| option_index++] = scr_create_option("Content", scr_action_option_use);
options[| option_index++] = scr_create_option("Sad", scr_action_option_use);
options[| option_index++] = scr_create_option("Angry", scr_action_option_info);
scr_mark_option_list(options);