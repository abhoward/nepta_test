/// @description  Draw the unit information
if (!instance_exists(unit)) {
    instance_destroy();
    exit;
}

// Draw self
draw_self();

// Draw the action meter and health
scr_draw_bar(x+9, y+24, s_action_meter, unit.action_meter, unit.max_action_meter);
scr_draw_bar(x+9, y+12, s_health_bar, unit.stats_object.draw_health, unit.stats_object.stats[? "maxhealth"]);
draw_text_ext_transformed_color(x+18+(sprite_get_width(s_health_bar)), y+12, string(unit.stats_object.stats[? "health"]), 0, 100, 2, 2, 0, c_white, c_white, c_black, c_black, 1); // current health goes here

// Draw the poison line
if (o_player_battle_unit.poisoned && !o_player_battle_unit.poison_created && o_player_battle_unit.poison_timer > 0) {
	instance_destroy(o_player_poison_line);
	instance_create_depth(o_player_battle_unit.xstart - (sprite_width/2) + 9 + o_player_battle_unit.poison_pos, y + 24, -100, o_player_poison_line);
	o_player_battle_unit.poison_created = true;
} else if (instance_exists(o_player_poison_line) && o_player_battle_unit.poison_timer <= 0) {
	instance_destroy(o_player_poison_line);
}

if (o_enemy_battle_unit.poisoned && !o_enemy_battle_unit.poison_created && o_enemy_battle_unit.poison_timer > 0) {
	instance_destroy(o_enemy_poison_line);
	instance_create_depth(o_enemy_battle_unit.xstart - (sprite_width/2) + 9 + o_enemy_battle_unit.poison_pos, y + 24, -100, o_enemy_poison_line);
	o_enemy_battle_unit.poison_created = true;
} else if (instance_exists(o_enemy_poison_line) && o_enemy_battle_unit.poison_timer <= 0) {
	instance_destroy(o_enemy_poison_line);
}

// Draw the confuse line
if (o_player_battle_unit.confused && !o_player_battle_unit.confuse_created && o_player_battle_unit.confuse_timer > 0) {
	instance_destroy(o_player_confuse_line);
	instance_create_depth(o_player_battle_unit.xstart - (sprite_width/2) + 9 + o_player_battle_unit.confuse_pos, y + 24, -100, o_player_confuse_line);
	o_player_battle_unit.confuse_created = true;
} else if (instance_exists(o_player_confuse_line) && o_player_battle_unit.confuse_timer <= 0) {
	instance_destroy(o_player_confuse_line);
}

if (o_enemy_battle_unit.confused && !o_enemy_battle_unit.confuse_created && o_enemy_battle_unit.confuse_timer > 0) {
	instance_destroy(o_enemy_confuse_line);
	instance_create_depth(o_enemy_battle_unit.xstart - (sprite_width/2) + 9 + o_enemy_battle_unit.confuse_pos, y + 24, -100, o_enemy_confuse_line);
	o_enemy_battle_unit.confuse_created = true;
} else if (instance_exists(o_enemy_confuse_line) && o_enemy_battle_unit.confuse_timer <= 0) {
	instance_destroy(o_enemy_confuse_line);
}

// Draw the text
draw_text(x+9, y+45, "Level");
draw_set_halign(fa_right);
draw_text(x+sprite_width-42, y+45, string(unit.stats_object.level));
draw_set_halign(fa_left);

// Draw various status effects with their timers

// Poison Effect
if (o_player_battle_unit.poisoned) {
	instance_create_depth(o_player_battle_unit.xstart-90, y+90, 0, o_player_poison_emblem);
	//draw_sprite(s_poison_emblem, 0, x+15, y+90);
	if (o_player_battle_unit.poison_timer > 0) {
		draw_text(o_player_battle_unit.xstart-100, y+80, o_player_battle_unit.poison_timer);
	}
} else if (instance_exists(o_player_poison_emblem) && o_player_battle_unit.poison_timer <= 0) {
	instance_destroy(o_player_poison_emblem);
}

if (o_enemy_battle_unit.poisoned) {
	instance_create_depth(o_enemy_battle_unit.xstart-90, y+90, 0, o_enemy_poison_emblem);
	//draw_sprite(s_poison_emblem, 0, x+15, y+90);
	if (o_enemy_battle_unit.poison_timer > 0) {
		draw_text(o_enemy_battle_unit.xstart-100, y+80, o_enemy_battle_unit.poison_timer);
	}
} else if (instance_exists(o_enemy_poison_emblem) && o_enemy_battle_unit.poison_timer <= 0) {
	instance_destroy(o_enemy_poison_emblem);
}

// Confuse Effect
if (o_player_battle_unit.confused) {
	instance_create_depth(o_player_battle_unit.xstart-60, y+90, 0, o_player_confuse_emblem);
	if (o_player_battle_unit.confuse_timer > 0) {
		draw_text(o_player_battle_unit.xstart-70, y+80, o_player_battle_unit.confuse_timer);
	}
} else if (instance_exists(o_player_confuse_emblem) && o_player_battle_unit.confuse_timer <= 0) {
	instance_destroy(o_player_confuse_emblem);
}

if (o_enemy_battle_unit.confused) {
	instance_create_depth(o_enemy_battle_unit.xstart-60, y+90, 0, o_enemy_confuse_emblem);
	if (o_enemy_battle_unit.confuse_timer > 0) {
		draw_text(o_enemy_battle_unit.xstart-70, y+80, o_enemy_battle_unit.confuse_timer);
	}
} else if (instance_exists(o_enemy_confuse_emblem) && o_enemy_battle_unit.confuse_timer <= 0) {
	instance_destroy(o_enemy_confuse_emblem);
}