/// @description  Draw the message
event_inherited();

// Draw the message
draw_text_transformed(x, y, string_hash_to_newline(message), 1.5, 1.5, 0);