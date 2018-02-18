/// @description Insert description here
scr_draw_nine_slice(s_textbox, x, y, x+width, y+height);

// Draw the options list
for (var i=0; i<ds_list_size(options); i++) {
    var option = options[| i];
    var color = purple_gray;
    if (i == index) {
		color = c_white;
	}
    draw_text_colour(x+16, y+8+12*(3*i), option[? "text"], color, color, color, color, 1);
}
