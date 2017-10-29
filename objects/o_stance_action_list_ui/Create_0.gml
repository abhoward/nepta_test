event_inherited();
width = 100;
height = 44;
stance_enabled = true;

// Create the options list
options = ds_list_create();
for (var i=0; i<ds_list_size(o_player_stats.stances); i++) {
    var stance = o_player_stats.stances[| i];
    options[| i] = scr_create_option(stance[? "name"] + " Actions", scr_stance_action_option_use_ui);
}

scr_mark_option_list(options);

//var index = 0;

//if (o_input.up_pressed && index < ds_list_size(options)) {
//    index += 1;
//    //scr_audio_play_sound_effect(a_menu_move, false, 50);
//}
    
//if (o_input.down_pressed && index > 0) {
//    index -= 1;
//    //scr_audio_play_sound_effect(a_menu_move, false, 50);
//}

//index = clamp(index, 0, ds_list_size(options));

//if (o_input.action) {
//	option = options[| index];
//}