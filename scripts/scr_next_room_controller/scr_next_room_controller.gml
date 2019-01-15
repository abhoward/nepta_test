///@description control which room to go to next based on jane's room state and which room she is currently in
///@arg room_state
///@arg current_room

var room_state = argument0;
var next_room = argument1;

if (room_state == "day2" && next_room == r_salvus) {
	next_room = r_salvus_day2;
	return next_room;
	show_debug_message("changing next_room");
} else {
	return next_room;
}