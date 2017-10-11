/// @description  Initialize the menu ui
event_inherited();
height = 76;

// Create the options list
var option_index = 0;
options[| option_index++] = create_option("Stats", menu_option_stats);
options[| option_index++] = create_option("Items", menu_option_items);
options[| option_index++] = create_option("Save", menu_option_save);
options[| option_index++] = create_option("Load", menu_option_load);
options[| option_index++] = create_option("Exit", menu_option_exit);
mark_option_list(options);

