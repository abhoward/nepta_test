event_inherited();

// Hit the target
if (animation_hit_frame(4)) {
    speed = 0;
    scr_set_hitflash(target, room-speed/4);
    scr_deal_damage(creator, target, chance(creator.stats_object.stats[? "critical"]/100), 1);
	
	target.poisoned = true;
	target.poison_created = false;
	target.poison_pos = irandom(sprite_get_width(s_action_meter));
	
	if (target.sad_stance) {
		target.state = scr_battle_hit_sad_state;
	} else if (target.angry_stance) {
		target.state = scr_battle_hit_angry_state;
	} else if (target.content_stance) {
		target.state = scr_battle_hit_state;
	}
    scr_view_screenshake(4, seconds_to_steps(.2));
}

