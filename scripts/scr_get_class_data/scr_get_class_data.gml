///scr_get_class_data()
return json_decode(@'
{
	"elizabeth": {
		"name": "Elizabeth",
		"health": 10,
		"attack": 8,
		"defense": 8,
		"speed": 9,
		"critical": 25,
		"experience": 0,
		"actions": [],
		"stances": ["sad", "angry", "content"]
	},
	
	"spider": {
		"name": "Spider",
		"health": 300,
		"attack": 5,
		"defense": 4,
		"speed": 7,
		"critical": 5,
		"experience": 100,
		"actions": ["attack"],
		"stances": ["sad", "angry", "content"]
	},
	
	"gargoyle": {
		"name": "Gargoyle",
		"health": 10,
		"attack": 500,
		"defense": 8,
		"speed": 4,
		"critical": 10,
		"experience": 100,
		"actions": ["sonar spell"],
		"stances": ["sad", "angry", "content"]
	}
}');