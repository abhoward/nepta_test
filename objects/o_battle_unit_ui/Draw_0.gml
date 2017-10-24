/// @description  Draw the unit information
if (!instance_exists(unit)) {
    instance_destroy();
    exit;
}

// Draw self
draw_self();

// Draw the action meter and health
scr_draw_bar(x+3, y+8, s_action_meter, unit.action_meter, unit.max_action_meter);
scr_draw_bar(x+3, y+4, s_health_bar, unit.stats_object.draw_health, unit.stats_object.stats[? "maxhealth"]);

if (o_player_battle_unit.poisoned && !o_player_battle_unit.poison_created) {
	instance_destroy(o_player_poison_line);
	instance_create_depth(o_player_battle_unit.xstart - (sprite_width/2) + 3 + o_player_battle_unit.poison_pos, y + 8, -100, o_player_poison_line);
	o_player_battle_unit.poison_created = true;
}

if (o_enemy_battle_unit.poisoned && !o_enemy_battle_unit.poison_created) {
	instance_destroy(o_enemy_poison_line);
	instance_create_depth(o_enemy_battle_unit.xstart - (sprite_width/2) + 3 + o_enemy_battle_unit.poison_pos, y + 8, -100, o_enemy_poison_line);
	o_enemy_battle_unit.poison_created = true;
}

// Draw the text
draw_text(x+3, y+15, "Level");
draw_set_halign(fa_right);
draw_text(x+sprite_width-14, y+15, string(unit.stats_object.level));
draw_set_halign(fa_left);