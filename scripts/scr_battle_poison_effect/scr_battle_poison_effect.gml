///scr_battle_poison_effect(battle_unit)
var battle_unit = argument0;
var damage = stats_object.stats[? "maxhealth"] / 8;

stats_object.stats[? "health"] -= damage;
scr_set_hitflash(battle_unit, room_speed / 2);