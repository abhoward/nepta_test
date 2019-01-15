/// @description  Fade
if (image_alpha != target_image_alpha) {
    // Approach the target image alpha
    image_alpha = approach(image_alpha, target_image_alpha, amount);
} else {	
	if (cutscene != noone) {
		create_cutscene(cutscene);
	}
	
	instance_destroy();
}