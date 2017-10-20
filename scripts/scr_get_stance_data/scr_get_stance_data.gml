///scr_get_stance_data()
return json_decode(@'{
	"sad": {
		"name": "Sad",
		"stance": "scr_battle_idle_sad_state",
		"info": "Decreases attack but\nincreases defense and\nallows the use\nof sad attacks."
	}, 
	
	"angry": {
		"name": "Angry",
		"stance": "scr_battle_idle_angry_state",
		"info": "Decreases defense but\nincreases attack and\nallows the use\nof angry attacks."
	},
	
	"content": {
		"name": "Content",
		"stance": scr_battle_idle_state",
		"info": "A neutral stance,\naffecting neither attack\nnor defense."
	}
}')