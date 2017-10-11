/// @description  Draw the option list
event_inherited();

// Draw the options list
for (var i=0; i<ds_list_size(options); i++) {
    var option = options[| i];
    var color = purple_gray;
    if (i == index) color = c_white;
    draw_text_colour(x+16, y+8+12*i, string_hash_to_newline(option[? "text"]), color, color, color, color, 1);
}

// Draw the caret for the option selection
draw_sprite(s_ui_caret, 0, x+6, y+8+12*index);

