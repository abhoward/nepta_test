/// @description  Initialize the title ui
event_inherited();
height = 150;

// Create the options list
var option_index = 0;
options[| option_index++] = scr_create_option("New Game", scr_title_option_new_game);
options[| option_index++] = scr_create_option("Load", scr_menu_option_load);
options[| option_index++] = scr_create_option("Quit", scr_title_option_quit);
scr_mark_option_list(options);