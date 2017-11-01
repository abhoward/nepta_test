///scr_battle_poison_effect(battle_unit)
var battle_unit = argument0;

if (stats_object.stats[? "health"] <= (stats_object.stats[? "maxhealth"] / 10)) {
	var damage = 0;
} else {
	var damage = stats_object.stats[? "maxhealth"] / 10;
	scr_set_hitflash(battle_unit, room_speed / 2);
}

stats_object.stats[? "health"] -= damage;

poison_hit = true;

if (o_battle.play) {
	o_battle.play = false;
	o_battle_unit.alarm[1] = 2 * room_speed;
}