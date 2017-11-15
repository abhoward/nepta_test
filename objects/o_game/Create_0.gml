/// @description  Initialize the game object

// Setting game's resolution
application_surface_draw_enable(false);
window_set_fullscreen(true);

global.MonitorW = display_get_width();
global.MonitorH = display_get_height();

global.Xoffset = (global.MonitorW - 960) / 2;
global.Yoffset = (global.MonitorH - 540) / 2;

if(global.MonitorW >= 1920 && global.MonitorH >= 1080) {
	surface_resize(application_surface, 1920, 1080)
	global.Xoffset = (global.MonitorW - 1920) / 2;
	global.Yoffset = (global.MonitorH - 1080) / 2;
}

// Make game truly random
randomize();

draw_set_colour(c_white);

// Set the GUI layer size
display_set_gui_size(view_wview[0], view_hview[0]);

// Font
global.custom_font = font_add_sprite_ext(s_font, FONT_CHARS, 1, 1);
draw_set_font(global.custom_font);

// Go to the next room
room_goto_next();

// Create the last room variable
last_room = r_town;

// Create the save data
global.save_data = ds_map_create();
global.load = false;

