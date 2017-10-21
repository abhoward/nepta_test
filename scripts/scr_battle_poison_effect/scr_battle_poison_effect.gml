///scr_battle_poison_effect()
var damage = o_battle_unit.stats_object.stats[? "maxhealth"] / 8;
o_battle_unit.stats_object.stats[? "health"] -= damage;
scr_set_hitflash(o_battle_unit, room_speed / 2);