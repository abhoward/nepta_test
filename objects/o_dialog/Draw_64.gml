/// @description  Draw the dialog shadow
draw_sprite_ext(b_dialogue_shadow, 0, 0, 0, 1, 1, 0, c_white, 0.5);

// Draw the frame
draw_sprite(sprite_index, 0, pos_x, pos_y);

// Draw the portrait
draw_sprite(portrait, 0, portrait_x-1, portrait_y);
draw_sprite(s_portrait_frame, 0, portrait_x-4, portrait_y-4);

// Set the font
draw_set_font(nepta_font);
draw_set_halign(fa_left);

// Draw the text shadow
draw_text_ext_colour(pos_x+margin+9, pos_y+9, string_hash_to_newline(text_visible), -1, width-margin*2, c_black, c_black, c_black, c_black, 1);

// Draw the text
draw_text_ext_colour(pos_x+margin+6, pos_y+6, string_hash_to_newline(text_visible), -1, width-margin*2, c_white, c_white, c_white, c_white, 1);

// Add to the count
if (alarm[0] <= 0) {
    text_count += spd;
}