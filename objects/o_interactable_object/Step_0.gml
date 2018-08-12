/// @description Insert description here
// You can write your code in this editor
if (cutscene != noone && !instance_exists(obj_textbox)) {
	show_debug_message("cutscene: " + string(cutscene));
	instance_activate_object(cutscene);
	cutscene = noone;
}