/// @description  Go to the next room
if (state != scr_jane_wait_state && o_input.action) {
    state = scr_jane_wait_state;
    var transition = instance_create_depth(0, 0, 0, o_fade_transition);
    transition.next_room = other.next_room;
    scr_audio_play_sound_effect(other.sound, false, 40);
}

