event_inherited();

// Hit the target
if (animation_hit_frame(4)) {
    speed = 0;
    scr_set_hitflash(target, room-speed/4);
	
	target.confused = true;
	target.confuse_created = false;
	target.confuse_pos = clamp(irandom(sprite_get_width(s_action_meter)), 4, 58);
	target.confuse_timer = 5;
	
	if (target.sad_stance) {
		target.state = scr_battle_hit_sad_state;
	} else if (target.angry_stance) {
		target.state = scr_battle_hit_angry_state;
	} else if (target.content_stance) {
		target.state = scr_battle_hit_state;
	}
    scr_view_screenshake(4, seconds_to_steps(.2));
}

