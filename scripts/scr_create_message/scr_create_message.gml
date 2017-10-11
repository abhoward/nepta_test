///scr_create_message(x, y, text)
var xx = argument0;
var yy = argument1;
var text = argument2;

// Create the message UI
var message_ui = instance_create_depth(xx, yy, 0, obj_message_ui);

// Update the message
with (message_ui) {
	message = text;
	width = string_width(text) + 12;
	height = string_height(text) + 12;
}

return message_ui;