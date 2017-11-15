/// @description  Draw the message
event_inherited();

// Draw the textbox
scr_draw_nine_slice(s_textbox, x, y, x+width, y+height);

// Draw the message
draw_text(x+6, y+7, string_hash_to_newline(message));