/// @description  Fade
if (image_alpha != target_image_alpha) {
    // Approach the target image alpha
    image_alpha = approach(image_alpha, target_image_alpha, amount);
	show_debug_message("image_alpha: " + string(image_alpha));
} else {	
	instance_destroy();
}