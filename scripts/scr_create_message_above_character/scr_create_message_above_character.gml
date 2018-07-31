///scr_create_message_above_character(character, text)
var character = argument0;
var text = argument1;

// Create the message
var message_ui = scr_create_emote(0, 0, text);

// Update the message
with (message_ui) {
	x = character.x + (character.sprite_width / 4);
	y = character.y - (character.sprite_height + 16);
}

return message_ui;