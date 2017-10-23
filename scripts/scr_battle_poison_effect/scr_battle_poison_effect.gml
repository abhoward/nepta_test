///scr_battle_poison_effect()
if (object_index == o_enemy_battle_unit) {
	var damage = o_enemy_battle_unit.stats_object.stats[? "maxhealth"] / 8;
	o_enemy_battle_unit.stats_object.stats[? "health"] -= damage;
	scr_set_hitflash(o_enemy_battle_unit, room_speed / 2);
	
}