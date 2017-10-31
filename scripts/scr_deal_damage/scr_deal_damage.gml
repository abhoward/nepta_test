///scr_deal_damage(attacker, defender, critical, modifier, type)
var attacker = argument0;
var defender = argument1;
var critical = argument2;
var modifier = argument3;

var attack = attacker.stats_object.stats[? "attack"];
var defense = defender.stats_object.stats[? "defense"];
var defending_unit = argument1;

if (instance_exists(defender) && instance_exists(attacker.stats_object)) {
	var damage = (attack + (attacker.stats_object.level * 3) + (1 - defense * 0.05)) * 0.5;
	
	var total_damage = (damage + (critical * damage * (attacker.stats_object.stats[? "critical"] / 100)));
	
	if (attacker.angry_stance) {
		if (attacker.raged) {
			modifier -= 0.5;
		} else {
			modifier += 0.25;
		}
	}
	
	if (defender.sad_stance) {
		modifier += 0.25
	}
	
	total_damage *= modifier;
	
	// Deal damage
	defender.stats_object.stats[? "health"] -= total_damage;
	
	if (attacker.raged) {
		defender.action_meter -= 40 * (sprite_get_number(s_action_meter) / defender.max_action_meter);
		attacker.raged = false;
	}
}