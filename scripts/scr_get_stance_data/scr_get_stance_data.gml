///scr_get_stance_data()
return json_decode(@'{
	"sad": {
		"name": "Sad",
		"stance": "scr_set_sad_stance",
		"info": "Decreases attack but\nincreases defense and\nallows the use\nof sad attacks.",
		"actions": ["attack", "cry"]
	}, 
	
	"angry": {
		"name": "Angry",
		"stance": "scr_set_angry_stance",
		"info": "Decreases defense but\nincreases attack and\nallows the use\nof angry attacks.",
		"actions": ["attack", "rage"]
	},
	
	"content": {
		"name": "Content",
		"stance": "scr_set_content_stance",
		"info": "A neutral stance,\naffecting neither attack\nnor defense.",
		"actions": ["attack", "fire_spell", "sonar_spell"]
	}
}')