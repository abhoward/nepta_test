/// @description  Control the state
script_execute(state);

event_inherited();

show_debug_message("dialogue variable: " + string(global.dialogue_variable));

if (ds_list_size(o_jane.talked_to) >= 4 && global.dialogue_variable == 0) {
	show_debug_message("increasing dialogue variable");
	global.dialogue_variable = 1;
}