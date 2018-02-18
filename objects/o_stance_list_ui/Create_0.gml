event_inherited();
width = 200;
height = 100;

// Create the options list
options = ds_list_create();
for (var i=0; i<ds_list_size(o_player_stats.stances); i++) {
    var stance = o_player_stats.stances[| i];
    options[| i] = scr_create_option(stance[? "name"], scr_stance_option_use_ui);
}

scr_mark_option_list(options);

