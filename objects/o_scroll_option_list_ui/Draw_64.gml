/// @description  Draw the option list
event_inherited();

// Draw the options list
for (var i=index-2; i<=index+2; i++) {
    if (i >= 0 && i < ds_list_size(options)) {
        var option = options[| i];
        var color = purple_gray;
        if (i == index) color = c_white;
        draw_text_colour(x+16, y+6+10*(i+2-index), string_hash_to_newline(option[? "text"]), color, color, color, color, 1);
    }
}

// Draw the caret for the option selection
draw_sprite(s_ui_caret, 0, x+6, y+6+10*2);

