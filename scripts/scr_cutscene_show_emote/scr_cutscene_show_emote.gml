///scr_cutscene_show_emote(character, text)
var character = argument0;
var text = argument1;

if (!instance_exists(o_emote_ui)) {
	var message = scr_create_message_above_character(character, text);
	message.cutscene = id;
}