///scr_menu_option_load()
if (scr_load_game("save.dat")) {
	scr_create_message_at_view_center("Game loaded.");
} else {
	scr_create_message_at_view_center("Unable to load the game.");
}

instance_destroy();