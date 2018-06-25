///scr_get_content_action_data()
return json_decode(@'{
	"sad attack": {
		"name": "Sad Attack",
		"action": "scr_battle_approach_sad_state",
		"info": "A basic melee\nattack.",
		"message": "You must be sad\nto use this."
	}, 
	
	"angry attack": {
		"name": "Angry Attack",
		"action": "scr_battle_approach_angry_state",
		"info": "A basic melee\nattack.",
		"message": "You must be angry\nto use this."
	},
	
	"content attack": {
		"name": "Content Attack",
		"action": "scr_battle_approach_state",
		"info": "A basic melee\nattack.",
		"message": "You must be content\nto use this."
	},
	
	"fire spell": {
		"name": "Fire Spell",
		"action": "scr_battle_fire_spell_state",
		"info": "Has a lower damage\nrate but a higher\ncritical chance.",
		"message": "You must be content\nto use this."
	},
	
	"sonar spell": {
		"name": "Sonar Spell",
		"action": "scr_battle_sonar_spell_state",
		"info": "A basic ranged\nattack.",
		"message": "You must be content\nto use this."
	},
	
	"rage": {
		"name": "Rage",
		"action": "scr_battle_rage_state",
		"info": "Rage quit the game. Find\n out you cannot. Then\nrage some more.",
		"message": "You must be angry\nto use this.",
		"cooldown": "Turns left to use this attack: "
	},
	
	"cripple": {
		"name": "Cripple",
		"action": "scr_battle_cripple_state",
		"info": "Make sure they can never\nwalk again. Emotionally,\nat least.",
		"message": "You must be angry\nto use this.",
		"cooldown": "Turns left to use this attack: "
	},
	
	"cry": {
		"name": "Cry",
		"action": "scr_battle_cry_state",
		"info": "Cry like a little baby.\nNot to be confused\nwith the Youtuber.",
		"message": "You must be sad\nto use this.",
		"cooldown": "Turns left to use this attack: "
	},
	
	"confuse": {
		"name": "Confuse",
		"action": "scr_battle_confuse_state",
		"info": "Spout a bunch of\nrandom nonsense to\nconfuse the enemy.",
		"message": "You must be sad\n to use this.",
		"cooldown": "Turns left to use this attack: "
	},
	
	"heal": {
		"name": "Heal",
		"action": "scr_battle_heal_state",
		"info": "Give yourself a\ngreat big bear hug.",
		"message": "You must be content\n to use this.",
		"cooldown": "Turns left to use this attack: "
	}
}')