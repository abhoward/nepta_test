/// @description  Control the state
script_execute(state);

event_inherited();

//show_debug_message("dialogue variable: " + string(dialogue_state));

if (ds_list_size(o_jane.talked_to) >= 4 && dialogue_state == "game_start") {
	show_debug_message("increasing dialogue variable");
	dialogue_state = "day1_complete";
}