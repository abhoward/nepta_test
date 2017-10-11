///scr_get_stats(class_string)
var class_string = argument0;

// Create and copy stats map
var stats = json_decode(json_encode(o_data.classes[? class_string]));

// set maxhealth and health
stats[? "maxhealth"] = scr_calculate_health(level, stats[? "health"]);
stats[? "health"] = stats[? "maxhealth"];

// set experience
if(object_index == o_player_stats) {
	stats[? "maxexperience"] = level * 10;
}

// return stats
return stats;