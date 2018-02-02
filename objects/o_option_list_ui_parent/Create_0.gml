/// @description  Initialize the options list
event_inherited();
index = 0;
width = display_get_gui_width() / 5;
height = display_get_gui_height() / 5;

// Create the options list
options = ds_list_create();

// Set the player to the wait state
if (instance_exists(o_jane)) {
    o_jane.state = scr_elizabeth_wait_state;
}

// Color for non highlighted text
purple_gray = make_colour_rgb(145, 145, 175);