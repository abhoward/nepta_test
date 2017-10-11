/// @description  Initialize the action ui
event_inherited();
width = 56;
height = 40;

// Create the options list
options = ds_list_create();
var option_index = 0;
options[| option_index++] = create_option("Use", action_option_use);
options[| option_index++] = create_option("Info", action_option_info);
mark_option_list(options);


