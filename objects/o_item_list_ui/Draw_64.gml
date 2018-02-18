/// @description Insert description here
event_inherited();

// Draw the options list
for (var i=index-1; i<=index+1; i++) {
	if (i >= 0 && i < ds_list_size(options)) {
	    var option = options[| i];
	    var color = purple_gray;
		if (i == index) {
			color = c_white; 
		}
	    draw_text_colour(x+16, y+6+10*3*(i+1-index), (option[? "text"]), color, color, color, color, 1);
	}
}