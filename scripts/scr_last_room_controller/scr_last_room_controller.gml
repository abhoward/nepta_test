///@description control which room to save as the last room based on jane's room state and which room she is currently in
///@arg room_state
///@arg current_room

var room_state = argument0;
var last_room = argument1;

if (room_state == "day2" && last_room == r_salvus) {
	last_room = r_salvus_day2;
	return last_room;
	show_debug_message("changing last_room");
} else {
	return last_room;
}