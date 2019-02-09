/// @description  Control the state
event_inherited();

script_execute(state);

if (ds_list_size(talked_to) >= 4 && dialogue_state == "game_start") {
	show_debug_message("increasing dialogue variable");
	dialogue_state = "day1_complete";
}