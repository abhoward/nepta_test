/// @description  Draw the option list
event_inherited();

// Draw the options list
for (var i=index-1; i<=index+1; i++) {
    if (i >= 0 && i < ds_list_size(options)) {
        var option = options[| i];
        var color = purple_gray;
		if (i == index) {
			color = c_white;
			if (option[? "text"] == "Cry") {			
				if (o_player_battle_unit.sad_stance) {
					stance_enabled = true;
				} else if (!o_player_battle_unit.sad_stance) {
					stance_enabled = false;
				}
			} else if (option[? "text"] == "Rage") {
				if (o_player_battle_unit.angry_stance) {
					stance_enabled = true;
				} else if (!o_player_battle_unit.angry_stance) {
					stance_enabled = false;
				} else {
				}
			} 
		}
        draw_text_colour(x+16, y+6+10*(i+1-index), (option[? "text"]), color, color, color, color, 1);
    }
}

// Draw the caret for the option selection
draw_sprite(s_ui_caret, 0, x+6, y+6+10);