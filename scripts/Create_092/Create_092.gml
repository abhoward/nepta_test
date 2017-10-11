/// @description Initialize the game object
draw_set_color(c_white);

// Set the GUI layer size
display_set_gui_size(view_wview[0], view_hview[0]);

// Font
global.custom_font = font_add_sprite_ext(s_font, FONT_CHARS, 1, 1);
draw_set_font(global.custom_font);

// Go to next room
room_goto_next();

// Create last room variable
last_room = r_town;

// Create the save data
global.save_data = ds_map_create();
global.load = false;