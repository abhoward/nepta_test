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

// Draw the poison line
if (o_player_battle_unit.poisoned && !o_player_battle_unit.poison_created && o_player_battle_unit.poison_timer > 0) {
	instance_destroy(o_player_poison_line);
	instance_create_depth(o_player_battle_unit.xstart - (sprite_width/2) + 3 + o_player_battle_unit.poison_pos, y + 8, -100, o_player_poison_line);
	o_player_battle_unit.poison_created = true;
} else if (instance_exists(o_player_poison_line) && o_player_battle_unit.poison_timer <= 0) {
	instance_destroy(o_player_poison_line);
}

if (o_enemy_battle_unit.poisoned && !o_enemy_battle_unit.poison_created && o_enemy_battle_unit.poison_timer > 0) {
	instance_destroy(o_enemy_poison_line);
	instance_create_depth(o_enemy_battle_unit.xstart - (sprite_width/2) + 3 + o_enemy_battle_unit.poison_pos, y + 8, -100, o_enemy_poison_line);
	o_enemy_battle_unit.poison_created = true;
} else if (instance_exists(o_enemy_poison_line) && o_enemy_battle_unit.poison_timer <= 0) {
	instance_destroy(o_enemy_poison_line);
}

// Draw the confuse line
if (o_player_battle_unit.confused && !o_player_battle_unit.confuse_created && o_player_battle_unit.confuse_timer > 0) {
	instance_destroy(o_player_confuse_line);
	instance_create_depth(o_player_battle_unit.xstart - (sprite_width/2) + 3 + o_player_battle_unit.confuse_pos, y + 8, -100, o_player_confuse_line);
	o_player_battle_unit.confuse_created = true;
} else if (instance_exists(o_player_confuse_line) && o_player_battle_unit.confuse_timer <= 0) {
	instance_destroy(o_player_confuse_line);
}

if (o_enemy_battle_unit.confused && !o_enemy_battle_unit.confuse_created && o_enemy_battle_unit.confuse_timer > 0) {
	instance_destroy(o_enemy_confuse_line);
	instance_create_depth(o_enemy_battle_unit.xstart - (sprite_width/2) + 3 + o_enemy_battle_unit.confuse_pos, y + 8, -100, o_enemy_confuse_line);
	o_enemy_battle_unit.confuse_created = true;
} else if (instance_exists(o_enemy_confuse_line) && o_enemy_battle_unit.confuse_timer <= 0) {
	instance_destroy(o_enemy_confuse_line);
}

// Draw the text
draw_text(x+3, y+15, "Level");
draw_set_halign(fa_right);
draw_text(x+sprite_width-14, y+15, string(unit.stats_object.level));
draw_set_halign(fa_left);