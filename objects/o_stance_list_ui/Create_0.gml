event_inherited();
width = 80;
height = 44;

// Create the options list
options = ds_list_create();
for (var i=0; i<ds_list_size(o_player_stats.stances); i++) {
    var action = o_player_stats.stances[| i];
    options[| i] = scr_create_option(action[? "name"], scr_stance_option_use_ui);
}

scr_mark_option_list(options);

