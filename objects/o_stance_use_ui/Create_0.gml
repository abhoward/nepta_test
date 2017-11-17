/// @description Initialize the stance ui
event_inherited();
width = 168;
height = 120;

// Create the options list
options = ds_list_create();
var option_index = 0;
options[| option_index++] = scr_create_option("Use", scr_stance_option_use);
options[| option_index++] = scr_create_option("Info", scr_stance_option_info);
scr_mark_option_list(options);