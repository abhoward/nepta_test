///scr_get_stance_data()
return json_decode(@'{
	"sad": {
		"name": "Sad",
		"stance": "scr_set_sad_stance",
		"info": "Decreases attack but\nincreases defense and\nallows the use\nof sad attacks."
	}, 
	
	"angry": {
		"name": "Angry",
		"stance": "scr_set_angry_stance",
		"info": "Decreases defense but\nincreases attack and\nallows the use\nof angry attacks."
	},
	
	"content": {
		"name": "Content",
		"stance": "scr_set_content_stance",
		"info": "A neutral stance,\naffecting neither attack\nnor defense."
	}
}')