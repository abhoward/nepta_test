///scr_cutscene_show_message(text)
var text = argument0;

if (!instance_exists(o_message_ui)) {
	var message = scr_create_message_at_view_center(text);
	message.cutscene = id;
}