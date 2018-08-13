/// @description Insert description here
// You can write your code in this editor
if (cutscene != noone && !instance_exists(obj_textbox)) {
	show_debug_message("cutscene: " + string(cutscene));
	create_cutscene(cutscene);
	cutscene = noone;
}