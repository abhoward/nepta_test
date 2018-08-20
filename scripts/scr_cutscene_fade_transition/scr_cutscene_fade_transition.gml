///@description fade the screen out, then back in
///@arg target_alpha
///@arg amount_to_fade
///@arg length_between_fades

var target_alpha = argument0;
var amount = argument1;
var transition_length = argument2;

if (!instance_exists(o_fade_transition)) {
	var transition = instance_create_depth(0, 0, 0, o_fade_transition);

	transition.target_image_alpha = target_alpha;
	transition.amount = amount;
	transition.transition_length = transition_length;
}