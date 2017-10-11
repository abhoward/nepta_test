/// @description  Navigate the options
if (!enabled) exit;
var last_index = index;
index += o_input.down_pressed - o_input.up_pressed;
index = clamp(index, 0, ds_list_size(options)-1);
if (index != last_index) {
    audio_play_sound_effect(a_menu_move, false, 50);
}

// Exit the option list
if (o_input.back) {
    instance_destroy();
}

// Run the option
if (o_input.action && ds_list_size(options) > 0) {
    var option = options[| index];
    script_execute(option[? "script"]);
    if (!instance_exists(child)) {
        audio_play_sound_effect(a_menu_select, false, 55);
    } else {
        audio_play_sound_effect(a_menu_move, false, 50);
    }
}

