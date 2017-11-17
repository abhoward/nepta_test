event_inherited();
width = 240;
height = 124;
stance_enabled = true;

// Create the options list
options = ds_list_create();
//sad_options = ds_list_create();
//angry_options = ds_list_create();
//content_options = ds_list_create();

if (o_stance_action_list_ui.option[? "text"] == "Sad Actions") {
	for (var i=0; i<ds_list_size(o_player_stats.sad_actions); i++) {
	    var sad_action = o_player_stats.sad_actions[| i];
	    options[| i] = scr_create_option(sad_action[? "name"], scr_action_option_use_ui);
	}
} else if (o_stance_action_list_ui.option[? "text"] == "Angry Actions") {
	for (var i=0; i<ds_list_size(o_player_stats.angry_actions); i++) {
	    var angry_action = o_player_stats.angry_actions[| i];
	    options[| i] = scr_create_option(angry_action[? "name"], scr_action_option_use_ui);
	}
} else if (o_stance_action_list_ui.option[? "text"] == "Content Actions") {
	for (var i=0; i<ds_list_size(o_player_stats.content_actions); i++) {
	    var content_action = o_player_stats.content_actions[| i];
	    options[| i] = scr_create_option(content_action[? "name"], scr_action_option_use_ui);
	}
}

scr_mark_option_list(options);
//scr_mark_option_list(sad_options);
//scr_mark_option_list(angry_options);
//scr_mark_option_list(content_options);