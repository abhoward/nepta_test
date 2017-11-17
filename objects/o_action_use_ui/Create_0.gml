/// @description  Initialize the action ui
event_inherited();
width = 168;
height = 120;

// Create the options list
options = ds_list_create();
var option_index = 0;
options[| option_index++] = scr_create_option("Use", scr_action_option_use);
options[| option_index++] = scr_create_option("Info", scr_action_option_info);
scr_mark_option_list(options);