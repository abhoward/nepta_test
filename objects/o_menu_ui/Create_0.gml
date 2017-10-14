/// @description  Initialize the menu ui
event_inherited();
height = 76;

// Create the options list
var option_index = 0;
options[| option_index++] = scr_create_option("Stats", scr_menu_option_stats);
options[| option_index++] = scr_create_option("Items", scr_menu_option_items);
options[| option_index++] = scr_create_option("Save", scr_menu_option_save);
options[| option_index++] = scr_create_option("Load", scr_menu_option_load);
options[| option_index++] = scr_create_option("Exit", scr_menu_option_exit);
scr_mark_option_list(options);