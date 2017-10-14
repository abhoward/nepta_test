/// @description  Draw the battle ui
draw_self();
draw_sprite_ext(s_battle_ui_action, 0, x-40, y, 1, 1, 0, make_colour_hsv(0, 0, 127+128*(index == ACTION)), 1);
draw_sprite_ext(s_battle_ui_item, 0, x+4, y, 1, 1, 0, make_colour_hsv(0, 0, 127+128*(index == ITEM)), 1);
draw_sprite_ext(s_battle_ui_run, 0, x+48, y, 1, 1, 0, make_colour_hsv(0, 0, 127+128*(index == RUN)), 1);
draw_sprite_ext(s_battle_ui_stance, 0, x+92, y, 1, 1, 0, make_colour_hsv(0, 0, 127+128*(index == STANCE)), 1);