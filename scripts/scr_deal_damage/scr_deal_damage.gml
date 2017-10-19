///scr_deal_damage(attacker, defender, critical, modifier)
var attacker = argument0.stats_object;
var defender = argument1.stats_object;
var critical = argument2;
var modifier = argument3;

var attack = attacker.stats[? "attack"];
var defense = defender.stats[? "defense"];
var defending_unit = argument1;

if (instance_exists(defender) && instance_exists(attacker)) {
	var damage = (attack + (attacker.level * 3) + (1 - defense * 0.05)) * 0.5;
	
	var total_damage = (damage + (critical * damage * (attacker.stats[? "critical"] / 100))) / (defender.defend + 1);
	
	if (defender) {
		modifier += 0.25;
	}
	
	if (attacker.angry_stance) {
		modifier += 0.25
	}
	
	total_damage *= modifier;
	
	// Deal damage
	defender.stats[? "health"] -= total_damage;
}