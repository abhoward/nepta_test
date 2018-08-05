///scr_cutscene_destroy_object(objects, fade, wait_seconds)
var objects = argument0;
var fade = argument1;
var wait_seconds = argument2;
var i = array_length_1d(objects) - 1;

repeat(i + 1) {
	if (!instance_exists(objects[i])) {
		action++;
		exit;
	}

	show_debug_message("wait: " + string(wait_seconds[i]));

	if (!scr_wait(wait_seconds[i], false) or (wait_seconds[i] == 0)) {
		show_debug_message("inside wait statement");
		show_debug_message("image_alpha before: " + string(objects[i].image_alpha));
		
		if (objects[i].image_alpha > 0) {
			objects[i].image_alpha -= fade[i];
			show_debug_message("image_alpha after: " + string(objects[i].image_alpha));
		} else if (objects[i].image_alpha == 0) {	
			instance_destroy(objects[i]);
			if (i == 0) {
				action++;
			}
		}
		
		//if (objects[i].image_alpha > 0) {
		//	show_debug_message("inside image_alpha > 0 statement");
		//	objects[i].image_alpha -= fade[i];
		//	show_debug_message("image_alpha after: " + string(objects[i].image_alpha));
		//} else if (objects[i].image_alpha == 0) {
		//	show_debug_message("inside image_alpha == 0 statement");
		//	instance_destroy(objects[i]);
		//}
	}
	i--;
}