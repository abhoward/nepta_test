///scr_get_item_data()
return json_decode(@'
{
	"potion": {
		"name": "Potion",
		"effect": "scr_heal_effect",
		"info": "A potion that\nheals 50 health",
		"arguments": [50],
		"battle": 0
	}, 
	
	"attack_boost": {
		"name": "Attack Boost",
		"effect": "scr_attack_effect",
		"info": "An elixir that\nincreases your attack\nby 10",
		"arguments": [50],
		"battle": 0
	}
}');