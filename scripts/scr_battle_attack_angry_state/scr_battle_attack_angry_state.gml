///scr_battle_attack_angry_state()
scr_battle_set_sprite(ATTACK_ANGRY, 0);

if (animation_hit_frame(0)) {
	var foe = instance_place(x + 32 * image_xscale, y, o_battle_unit);
	if (foe.stats_object.defend) {
		scr_audio_play_sound_effect(a_impact_defend, false, 80);
	} else {
		scr_audio_play_sound_effect(a_impact, false, 80);
	}
}

// Hit
if(animation_hit_frame(1)) {
	var foe = instance_place(x + 32 * image_xscale, y, o_battle_unit);
	if (foe) {
		scr_deal_damage(id, foe, chance(stats_object.stats[? "critical"] / 100), 1);
		scr_set_hitflash(foe, room_speed / 2);
		foe.state = scr_battle_hit_state;
		scr_view_screenshake(4, seconds_to_steps(0.2));
		
		// Set the view state
		o_battle_view.state = scr_battle_view_idle_state;
	}
}

// Return
if(animation_end()) {
	state = scr_battle_return_angry_state;
}