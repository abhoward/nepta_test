///scr_heal_effect()

// Heal the player
stats[? "health"] = min(stats[? "health"] + amount, stats[? "maxhealth"]);