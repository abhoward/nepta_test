/// @description  Initialize the options list
event_inherited();
index = 0;
width = 64;
height = 64;

// Create the options list
options = ds_list_create();

// Set the player to the wait state
if (instance_exists(o_elizabeth)) {
    o_elizabeth.state = scr_elizabeth_wait_state;
}

// Color for non highlighted text
purple_gray = make_colour_rgb(145, 145, 175);