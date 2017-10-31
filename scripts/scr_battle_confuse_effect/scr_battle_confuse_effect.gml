///scr_battle_confuse_effect(battle_unit)
var battle_unit = argument0;

//if (stats_object.stats[? "health"] <= (stats_object.stats[? "maxhealth"] / 10)) {
//	var damage = 0;
//} else {
//	var damage = stats_object.stats[? "maxhealth"] / 10;
//	scr_set_hitflash(battle_unit, room_speed / 2);
//}

scr_deal_damage(battle_unit, battle_unit, 0, 1);

confuse_hit = true;
confuse_timer--;

if (o_battle.play) {
	o_battle.play = false;
	o_battle_unit.alarm[1] = 2 * room_speed;
}