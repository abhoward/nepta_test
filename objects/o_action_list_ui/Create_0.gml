event_inherited();
width = 80;
height = 44;
stance_enabled = true;

// Create the options list
options = ds_list_create();
for (var i=0; i<ds_list_size(o_player_stats.actions); i++) {
    var action = o_player_stats.actions[| i];
    options[| i] = scr_create_option(action[? "name"], scr_action_option_use_ui);
}

scr_mark_option_list(options);

