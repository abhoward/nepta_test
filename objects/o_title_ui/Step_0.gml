/// @description Insert description here
/// @description  Navigate the options
if (!enabled) exit;
var last_index = index;
index += o_input.down_pressed - o_input.up_pressed;
index = clamp(index, 0, ds_list_size(options) - 1);

if (index != last_index) {
   scr_audio_play_sound_effect(a_menu_move, false, 50);
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

