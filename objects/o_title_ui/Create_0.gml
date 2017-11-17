/// @description  Initialize the title ui
event_inherited();

var offset = 10;
height = display_get_gui_height() - (2 * offset);

x = display_get_gui_width() - ((width + 16) + offset);
y = offset;

// Create the options list
var option_index = 0;
options[| option_index++] = scr_create_option("New Game", scr_title_option_new_game);
options[| option_index++] = scr_create_option("Load", scr_menu_option_load);
options[| option_index++] = scr_create_option("Quit", scr_title_option_quit);
scr_mark_option_list(options);