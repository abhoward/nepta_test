///scr_battle_poison_effect(battle_unit)
var battle_unit = argument0;
var damage = stats_object.stats[? "maxhealth"] / 8;

stats_object.stats[? "health"] -= damage;
scr_set_hitflash(battle_unit, room_speed / 2);

poison_hit = true;
o_battle.play = false;
o_battle_unit.alarm[1] = 2 * room_speed;