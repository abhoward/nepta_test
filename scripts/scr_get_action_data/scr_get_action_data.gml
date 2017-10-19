///scr_get_action_data()
return json_decode(@'{
	"attack": {
		"name": "Attack",
		"action": "scr_battle_approach_state",
		"info": "A basic melee\nattack."
	}, 
	
	"defend": {
		"name": "Defend",
		"action": "scr_action_defend",
		"info": "Reduces damage taken\nby half and sets\naction bar to half."
	}, 
	
	"fire spell": {
		"name": "Fire Spell",
		"action": "scr_battle_fire_spell_state",
		"info": "Has a lower damage\nrate but a higher\ncritical chance."
	},
	
	"sonar spell": {
		"name": "Sonar Spell",
		"action": "scr_battle_sonar_spell_state",
		"info": "A basic ranged\nattack."
	},
	
	"cry": {
		"name": "Cry",
		"action": "scr_battle_cry_state",
		"info": "Cry like a little baby.\nNot to be confused\nwith the Youtuber.",
		"message": "You must be sad\nto use this."
	}
}')