/// @description  Draw the option list
event_inherited();

// Draw the options list
for (var i=index-1; i<=index+1; i++) {
	if (i >= 0 && i < ds_list_size(options)) {
	    var option = options[| i];
	    var color = purple_gray;
		if (i == index) {
			color = c_white; 
		}
	    draw_text_colour(x+16, y+6+10*(i+1-index), (option[? "text"]), color, color, color, color, 1);
}
	//} else if (o_stance_action_list_ui.stance_name == "Angry") {
	//    if (i >= 0 && i < ds_list_size(sad_options)) {
	//        var angry_option = angry_options[| i];
	//        var color = purple_gray;
	//		if (i == index) {
	//			color = c_white; 
	//		}
	//        draw_text_colour(x+16, y+6+10*(i+1-index), (angry_option[? "text"]), color, color, color, color, 1);
	//    }
	//} else if (o_stance_action_list_ui.stance_name == "Content") {
	//    if (i >= 0 && i < ds_list_size(sad_options)) {
	//        var content_option = content_options[| i];
	//        var color = purple_gray;
	//		if (i == index) {
	//			color = c_white; 
	//		}
	//        draw_text_colour(x+16, y+6+10*(i+1-index), (content_option[? "text"]), color, color, color, color, 1);
	//    }
	//}
}

// Draw the caret for the option selection
draw_sprite(s_ui_caret, 0, x+6, y+6+10);