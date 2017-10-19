event_inherited();

// Hit the target
if (animation_hit_frame(4)) {
    speed = 0;
    scr_set_hitflash(target, room-speed/4);
    scr_deal_damage(creator, target, chance(creator.stats_object.stats[? "critical"]/100), sad_modifier);
    target.state = scr_battle_hit_state;
    scr_view_screenshake(4, seconds_to_steps(.2));
}