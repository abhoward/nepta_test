/// @description  Update the stats for death and level-up

// Check for level-up
if (stats[? "experience"] >= stats[? "maxexperience"]) {
    // Create the levelup object
    if (!instance_exists(o_levelup)) {
        instance_create_depth(room_width - view_wview[0] / 2, view_yview[0] + view_hview[0] / 2, 0, o_levelup);
    }    

    // Update the stats
    level++;
    stats[? "experience"] = stats[? "experience"]-stats[? "maxexperience"];
    stats[? "maxexperience"] = level*10;
    stats[? "health"] = scr_calculate_health(level, class[? "health"]);
    stats[? "maxhealth"] = stats[? "health"];
} 