/// @description changing which room to save as the previous room
if (room_state != o_jane.room_state) {
	room_state = o_jane.room_state;
	//current_room = room_get_name(room);
	last_room = scr_last_room_controller(room_state, last_room);
}