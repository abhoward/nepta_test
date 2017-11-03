///scr_get_class_data()
return json_decode(@'
{
	"elizabeth": {
		"name": "Elizabeth",
		"health": 10,
		"attack": 8,
		"defense": 20,
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
		"speed": 4,
		"critical": 10,
		"experience": 100,
		"actions": ["cry", "confuse", "sad attack", "rage", "angry attack", "content attack"],
		"stances": ["sad", "angry", "content"]
	}
}');