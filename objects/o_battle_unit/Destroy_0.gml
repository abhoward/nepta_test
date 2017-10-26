/// @description  Check to see if we are an enemy
if (object_index == o_enemy_battle_unit) {
    // Add experience
    o_player_stats.stats[? "experience"] += min(level/2, 1)*stats_object.stats[? "experience"];

    // Go to the last room
    var transition = instance_create_depth(0, 0, 0, o_fade_transition);
    transition.next_room = o_game.last_room;
    
    // Destroy the stats map
    ds_map_destroy(stats);
}

// Stop the play and view stats
o_battle.play = false;
o_battle_view.state = scr_battle_view_idle_state;