///save_game(file_name)
var file_name = argument0;

// Break cases
if (!instance_exists(o_player_stats)) show_error("Save error: Stats object not found.", false);
if (!instance_exists(o_jane)) show_error("Save error: Jane object not found.", false);

// Save the room
global.save_data[? "room"] = room_get_name(room); // Saving name of room rather than id because id isn't guaranteed to persist

// Save Jane's position
with (o_jane) {
	global.save_data[? "x"] = x; // generic key because we don't have multiple jane objects...for now
	global.save_data[? "y"] = y;
}

// Save the player's stats
with (o_player_stats) {
	global.save_data[? "level"] = level;
	global.save_data[? "items"] = scr_list_to_array(items); // relies on the items being the same order in the json file
	global.save_data[? "item number"] = scr_list_to_array(item_number);
}

// Save the data
ds_map_secure_save(global.save_data, file_name);