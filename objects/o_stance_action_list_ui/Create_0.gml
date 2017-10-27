event_inherited();
width = 80;
height = 44;
stance_enabled = true;

// Create the options list
options = ds_list_create();
for (var i=0; i<ds_list_size(o_player_stats.stances); i++) {
    var stance = o_player_stats.stances[| i];
    options[| i] = scr_create_option(stance[? "name"] + " Actions", scr_stance_action_option_use_ui);
	
	if (o_input.action) {
		stance_name = options[| index];
	}
}

scr_mark_option_list(options);