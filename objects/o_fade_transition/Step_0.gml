/// @description  Fade
if (image_alpha != target_image_alpha) {
    // Approach the target image alpha
    image_alpha = approach(image_alpha, target_image_alpha, amount);
} else {
    if (image_alpha == 1 && transition = true) {
		alarm[0] = (transition_length * room_speed) + 1; // can't equal 0 for some reason
		transition = false;
		show_debug_message(alarm[0]);
        // Go to the next room
    } else {
        // Destroy the transition object
        instance_destroy();
    }
}

