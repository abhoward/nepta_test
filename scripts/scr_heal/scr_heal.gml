///scr_deal_damage(healer, critical, modifier, type, is_physical, is_magical)
var healer = argument0;
var critical = argument1;
var modifier = argument2;
var is_physical = argument3;
var is_magical = argument4;

var charisma = healer.stats_object.stats[? "charisma"]; // physical attack
//var fortitude = healed.stats_object.stats[? "fortitude"]; // physical defense
var emotion = healer.stats_object.stats[? "emotion"]; // magic attack
//var resistance = healed.stats_object.stats[? "resistance"]; // magic defense

if (instance_exists(healer.stats_object)) {
	// healer's stance modifiers
	if (healer.sad_stance) {
		emotion += (healer.stats_object.level * 2);
		charisma -= (healer.stats_object.level * 2);
	} else if (healer.angry_stance) {
		emotion -= (healer.stats_object.level * 2);
		charisma += (healer.stats_object.level * 2);
	}
	
	// check to see what kind of damage we are dealing
	if (is_physical) {
		var heal = (charisma + ((healer.stats_object.level) * 3));
	} else if (is_magical) {
		var heal = (emotion + ((healer.stats_object.level) * 3));
	}
	
	//var total_damage = (damage + (critical * damage * (healer.stats_object.stats[? "critical"] / 100)));
	
	heal *= modifier;
	
	// Deal damage
	healer.stats_object.stats[? "health"] += heal;
	
	//if (healer.crippling) {
	//	show_debug_message("action meter before crippling: " + string(healed.action_meter));
	//	healed.action_meter = healed.action_meter / 2;
	//	show_debug_message("action meter after crippling: " + string(healed.action_meter));
	//	healer.crippling = false;
	//}
		
}