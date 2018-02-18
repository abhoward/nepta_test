///scr_deal_damage(attacker, defender, critical, modifier, type, is_physical, is_magical)
var attacker = argument0;
var defender = argument1;
var critical = argument2;
var modifier = argument3;
var is_physical = argument4;
var is_magical = argument5;

var charisma = attacker.stats_object.stats[? "charisma"]; // physical attack
var fortitude = defender.stats_object.stats[? "fortitude"]; // physical defense
var emotion = attacker.stats_object.stats[? "emotion"]; // magic attack
var resistance = defender.stats_object.stats[? "resistance"]; // magic defense

if (instance_exists(defender) && instance_exists(attacker.stats_object)) {
	// attacker's stance modifiers
	if (attacker.sad_stance) {
		emotion += (attacker.stats_object.level * 2);
		charisma -= (attacker.stats_object.level * 2);
	} else if (attacker.angry_stance) {
		emotion -= (attacker.stats_object.level * 2);
		charisma += (attacker.stats_object.level * 2);
	}
	
	// defender's stance modifiers
	if (defender.sad_stance) {
		resistance += (defender.stats_object.level * 2);
	} else if (defender.angry_stance) {
		fortitude += (defender.stats_object.level * 2);
	}
	
	// check to see what kind of damage we are dealing
	if (is_physical) {
		var damage = (charisma + ((attacker.stats_object.level - defender.stats_object.level) * 3) - (fortitude * 0.50));
	} else if (is_magical) {
		var damage = (emotion + ((attacker.stats_object.level - defender.stats_object.level) * 3)  - (resistance * 0.50));
	}
	
	//var total_damage = (damage + (critical * damage * (attacker.stats_object.stats[? "critical"] / 100)));
	
	// need to check different combinations of stances, Sad -> Angry -> Content -> Sad
	if (attacker.sad_stance && defender.angry_stance) {
		modifier *= 2;
	} else if (attacker.angry_stance && defender.content_stance) {
		modifier *= 2;
	} else if (attacker.content_stance && defender.sad_stance) {
		modifier *= 2;
	} else if (attacker.sad_stance && defender.content_stance) {
		modifier /= 2;
	} else if (attacker.content_stance && defender.angry_stance) {
		modifier /= 2;
	} else if (attacker.angry_stance && defender.sad_stance) {
		modifier /= 2;
	}
	
	damage *= modifier;
	
	// Deal damage
	defender.stats_object.stats[? "health"] -= damage;
	
	if (attacker.crippling) {
		show_debug_message("action meter before crippling: " + string(defender.action_meter));
		defender.action_meter = defender.action_meter / 2;
		show_debug_message("action meter after crippling: " + string(defender.action_meter));
		attacker.crippling = false;
	}
		
}