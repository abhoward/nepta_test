/// @description  Draw the battle ui
draw_self();
draw_sprite_ext(s_battle_ui_action, 0, x+50, y+20, 1, 1, 0, make_colour_hsv(0, 0, 127+128*(index == ACTION)), 1);
draw_sprite_ext(s_battle_ui_item, 0, x+50+sprite_get_width(s_battle_ui_action)+5, y+20, 1, 1, 0, make_colour_hsv(0, 0, 127+128*(index == ITEM)), 1);
draw_sprite_ext(s_battle_ui_run, 0, x+50+sprite_get_width(s_battle_ui_action)+5+sprite_get_width(s_battle_ui_item)+5, y+20, 1, 1, 0, make_colour_hsv(0, 0, 127+128*(index == RUN)), 1);
draw_sprite_ext(s_battle_ui_stance, 0, x+50+sprite_get_width(s_battle_ui_action)+5+sprite_get_width(s_battle_ui_item)+5+sprite_get_width(s_battle_ui_run)+5, y+20, 1, 1, 0, make_colour_hsv(0, 0, 127+128*(index == STANCE)), 1);