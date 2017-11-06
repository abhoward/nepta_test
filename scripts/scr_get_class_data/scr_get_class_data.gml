///scr_get_class_data()

// if enemy actions are changed, need to change action_index in their respective ai scripts as well
return json_decode(@'
{
	"elizabeth": {
		"name": "Elizabeth",
		"health": 10,
		"attack": 8,
		"defense": 20,
		"emotion": 8,
		"resistance": 20,
		"speed": 9,
		"critical": 25,
		"experience": 0,
		"actions": [],
		"stances": ["sad", "angry", "content"]
	},
	
	"spider": {
		"name": "Spider",
		"health": 300,
		"attack": 3,
		"defense": 0,
		"emotion": 8,
		"resistance": 20,
		"speed": 5,
		"critical": 5,
		"experience": 100,
		"actions": ["cry", "confuse", "sad attack", "rage", "angry attack", "content attack"],
		"stances": ["sad", "angry", "content"]
	},
	
	"gargoyle": {
		"name": "Gargoyle",
		"health": 300,
		"attack": 3,
		"defense": 0,
		"emotion": 8,
		"resistance": 20,
		"speed": 4,
		"critical": 10,
		"experience": 100,
		"actions": ["cry", "confuse", "sad attack", "rage", "angry attack", "content attack"],
		"stances": ["sad", "angry", "content"]
	}
}');