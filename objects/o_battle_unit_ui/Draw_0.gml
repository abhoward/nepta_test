/// @description  Draw the unit information
if (!instance_exists(unit)) {
    instance_destroy();
    exit;
}

// Draw self
draw_self();

// Draw the action meter and health
draw_bar(x+3, y+8, s_action_meter, unit.action_meter, unit.max_action_meter);
draw_bar(x+3, y+4, s_health_bar, unit.stats_object.draw_health, unit.stats_object.stats[? "maxhealth"]);

// Draw the text
draw_text(x+3, y+15, string_hash_to_newline("Level"));
draw_set_halign(fa_right);
draw_text(x+sprite_width-14, y+15, string_hash_to_newline(string(unit.stats_object.level)));
draw_set_halign(fa_left);

