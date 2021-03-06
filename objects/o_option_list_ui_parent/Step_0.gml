/// @description  Navigate the options
if (!enabled) exit;
var last_index = index;
index += o_input.down_pressed - o_input.up_pressed;
index = clamp(index, 0, ds_list_size(options) - 1);
if (index != last_index) {
   scr_audio_play_sound_effect(a_menu_move, false, 50);
}

// Exit the option list
if (o_input.back || o_input.menu) {
	if (action_list_enabled) {
		instance_destroy(o_action_list_ui);
		action_list_enabled = false;
	} else {
		instance_destroy();
	}
}

// Run the option
if (o_input.action && ds_list_size(options) > 0) {
    var option = options[| index];
    script_execute(option[? "script"]);
    if (!instance_exists(child)) {
       scr_audio_play_sound_effect(a_menu_select, false, 55);
    } else {
       scr_audio_play_sound_effect(a_menu_move, false, 50);
    }
}

