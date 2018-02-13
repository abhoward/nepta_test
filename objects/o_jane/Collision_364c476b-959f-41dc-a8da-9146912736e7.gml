/// @description Interact with object

/// @description  Go to the next room
if (state != scr_jane_wait_state && o_input.action && facing = other.facing) {
    state = scr_jane_wait_state;
	scr_create_message_at_view_center(other.message);
}