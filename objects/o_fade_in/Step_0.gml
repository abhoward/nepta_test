/// @description  Fade
if (image_alpha != target_image_alpha) {
    // Approach the target image alpha
    image_alpha = approach(image_alpha, target_image_alpha, amount);
} else {
	instance_destroy();
}
//else {
//    if (image_alpha == 1) {
//        // Go to the next room
//        target_image_alpha = 0;
//        if (next_room != noone) {
//			room_goto(next_room);
//		}
//    } else {
//        // Destroy the transition object
//        instance_destroy();
//    }
//}

