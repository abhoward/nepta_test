///scr_schow_dialogue(character, dialogue_array)
var character = argument0;
var dialogue_array = argument1;

if (!instance_exists(character)) {
	action++;
	exit;
}

if (instance_exists(obj_view)) {
	obj_view.target[? "x"] = character.x;
	obj_view.target[? "y"] = character.y;
}

if (!instance_exists(obj_dialogue)) {
	var dialogue = instance_create_depth(0, 0, 0, obj_dialogue);
	dialogue.cutscene = id;
	dialogue.text = dialogue_array;
	dialogue.portrait = character.portrait;
	with (dialogue) event_user(FORMAT_TEXT);
}