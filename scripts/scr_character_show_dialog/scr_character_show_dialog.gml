///scr_show_dialog(character, dialog_array)
var character = argument0;
var portrait = argument1;
var dialog_array = argument2;

if (!instance_exists(character)) {
	action++;
	exit;
}

if (instance_exists(o_view)) {
	o_view.target[? "x"] = character.x;
	o_view.target[? "y"] = character.y;
}

if (!instance_exists(o_dialog)) {
	var dialog = instance_create_depth(0, 0, 0, o_dialog);
	dialog.cutscene = id;
	dialog.text = dialog_array;
	dialog.portrait = portrait;
	with (dialog) event_user(FORMAT_TEXT);
}