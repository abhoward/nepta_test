/// @description Pick up the hidden item


/// @description  Go to the next room
if (state != scr_elizabeth_wait_state && o_input.action) {
    state = scr_elizabeth_wait_state;
	scr_pickup_item(o_data.items[? other.item], other.amount);
    if (other.amount > 1) {
		scr_create_message_at_view_center("You found " + string(other.amount) + other.item + "s!");
	} else {
		scr_create_message_at_view_center("You found a " + other.item + "!");
	}
    //scr_audio_play_sound_effect(other.sound, false, 40);
}