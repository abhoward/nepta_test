///scr_get_content_action_data()
return json_decode(@'{
	"sad attack": {
		"name": "Sad Attack",
		"action": "scr_battle_approach_sad_state",
		"info": "A basic melee\nattack.",
		"message": "Only usable\nwhen sad."
	}, 
	
	"angry attack": {
		"name": "Angry Attack",
		"action": "scr_battle_approach_angry_state",
		"info": "A basic melee\nattack.",
		"message": "Only usable\nwhen angry."
	},
	
	"content attack": {
		"name": "Content Attack",
		"action": "scr_battle_approach_state",
		"info": "A basic melee\nattack.",
		"message": "Only usable\nwhen content."
	},
	
	"fire spell": {
		"name": "Fire Spell",
		"action": "scr_battle_fire_spell_state",
		"info": "Has a lower damage\nrate but a higher\ncritical chance.",
		"message": "Only usable\nwhen content."
	},
	
	"sonar spell": {
		"name": "Sonar Spell",
		"action": "scr_battle_sonar_spell_state",
		"info": "A basic ranged\nattack.",
		"message": "Only usable\nwhen content."
	},
	
	"rage": {
		"name": "Rage",
		"action": "scr_battle_rage_state",
		"info": "Rage quit the game. Find\n out you cannot. Then\nrage some more.",
		"message": "You must be angry\nto use this."
	},
	
	"cry": {
		"name": "Cry",
		"action": "scr_battle_cry_state",
		"info": "Cry like a little baby.\nNot to be confused\nwith the Youtuber.",
		"message": "You must be sad\nto use this."
	}
}')