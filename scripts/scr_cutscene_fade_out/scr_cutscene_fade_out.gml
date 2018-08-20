///@description fade the screen out, then back in
///@arg target_alpha
///@arg amount_to_fade

var target_alpha = argument0;
var amount = argument1;

if (!instance_exists(o_cutscene_fade_out)) {
	var transition = instance_create_depth(0, 0, 0, o_cutscene_fade_out);

	transition.target_image_alpha = target_alpha;
	transition.amount = amount;
}

with(o_cutscene_fade_out) {
	if(image_alpha == target_image_alpha) {
		o_cutscene_parent.action++;
		exit;
	}
}