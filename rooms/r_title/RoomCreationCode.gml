// instantiate the title ui
if (!instance_exists(o_title_ui)) {
	instance_create_depth(display_get_gui_width() / 2, 10, -10, o_title_ui);
	exit;
}