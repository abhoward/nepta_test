///scr_create_emote(x, y, text)
var xx = argument0;
var yy = argument1;
var text = argument2;

// Create the emote UI
var emote_ui = instance_create_depth(xx, yy, 0, o_emote_ui);

// Update the emote
with (emote_ui) {
	message = text;
	width = string_width(text) + 12;
	height = string_height(text) + 12;
}

return emote_ui;