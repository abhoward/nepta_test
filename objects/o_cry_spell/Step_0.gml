event_inherited();

// Hit the target
if (animation_hit_frame(4)) {
    speed = 0;
    scr_set_hitflash(target, room-speed/4);
    scr_deal_damage(creator, target, chance(creator.stats_object.stats[? "critical"]/100), 1, false, true);
	
	target.poisoned = true;
	target.poison_created = false;
	target.poison_pos = irandom_range(2, 188);
	
	show_debug_message("poison_pos before while loop: " + string(target.poison_pos));
	
	while (target.confused && (target.confuse_pos - 3) < target.poison_pos && target.poison_pos < (target.confuse_pos + 3)) {
		target.poison_pos++;
		show_debug_message("poison_pos during while loop: " + string(target.poison_pos));
	}
	
	show_debug_message("poison_pos after while loop: " + string(target.poison_pos));
	
	target.poison_timer = 4;
	
	if (target.sad_stance) {
		target.state = scr_battle_hit_sad_state;
	} else if (target.angry_stance) {
		target.state = scr_battle_hit_angry_state;
	} else if (target.content_stance) {
		target.state = scr_battle_hit_state;
	}
    scr_view_screenshake(4, seconds_to_steps(.2));
}