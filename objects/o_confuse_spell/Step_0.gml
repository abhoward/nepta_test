event_inherited();

// Hit the target
if (animation_hit_frame(4)) {
    speed = 0;
    scr_set_hitflash(target, room-speed/4);
	
	target.confused = true;
	target.confuse_created = false;
	target.confuse_pos = irandom_range(2, 188);
	
	show_debug_message("confuse_pos before while loop: " + string(target.confuse_pos));
	
	while (target.poisoned && (target.poison_pos - 3) < target.confuse_pos && target.confuse_pos < (target.poison_pos + 3)) {
		target.confuse_pos++;
		show_debug_message("confuse_pos during while loop: " + string(target.confuse_pos));
	}
	
	show_debug_message("confuse_pos after while loop: " + string(target.confuse_pos));
	
	target.confuse_timer = 5;
	
	if (target.sad_stance) {
		target.state = scr_battle_hit_sad_state;
	} else if (target.angry_stance) {
		target.state = scr_battle_hit_angry_state;
	} else if (target.content_stance) {
		target.state = scr_battle_hit_state;
	}
    scr_view_screenshake(4, seconds_to_steps(.2));
	
	show_debug_message(string(target.confused));
	show_debug_message(string(target.confuse_created));
	show_debug_message(string(target.confuse_pos));
	show_debug_message(string(target.confuse_timer));
}

