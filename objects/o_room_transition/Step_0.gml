/// @description changing which room to go to
if (room_state != o_jane.room_state) {
	room_state = o_jane.room_state;
	//current_room = room_get_name(room);
	next_room = scr_next_room_controller(room_state, next_room);
}