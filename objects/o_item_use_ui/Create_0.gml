event_inherited();
width = 56;
height = 52;

// Create the options list
options = ds_list_create();
var option_index = 0;
options[| option_index++] = scr_create_option("Use", scr_item_option_use);
options[| option_index++] = scr_create_option("Info", scr_item_option_info);
options[| option_index++] = scr_create_option("Drop", scr_item_option_drop);
scr_mark_option_list(options);