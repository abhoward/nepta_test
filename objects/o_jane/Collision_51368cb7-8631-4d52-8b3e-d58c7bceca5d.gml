/// @description Pick up the hidden item

var vowels = array("a", "A", "e", "E", "i", "I", "o", "O", "u", "U");

/// @description  Go to the next room
if (state != scr_wait_state && o_input.action) {
    state = scr_wait_state;
	scr_pickup_item(o_data.items[? other.item], other.amount);
	if (is_in_array(string_char_at(other.item, 1), vowels)) {
		var word = "an";
	} else {
		var word = "a";
	}
    if (other.amount > 1) {
		scr_create_message_at_view_center("You found " + string(other.amount) + " " + other.item + "s!");
	} else {
		scr_create_message_at_view_center("You found " + word + " " + other.item + "!");
	}
    scr_audio_play_sound_effect(a_item_pickup, false, 40);
	instance_destroy(other);
}