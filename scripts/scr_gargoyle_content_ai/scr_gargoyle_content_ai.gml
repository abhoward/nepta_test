///scr_gargoyle_content_ai()

// action_index: cry = 0, confuse = 1, sad attack = 2, rage = 3, angry attack = 4, content attack = 5, heal = 6
// stance_index: sad = 0, angry = 1, content = 2
if (o_player_battle_unit.content_stance) {
	if (chance(0.25)) {
		var stance_index = 1; // sad = 0, angry = 1, content = 2
		var stance = stances[| stance_index];
		state = asset_get_index(stance[? "stance"]);
		scr_create_message_at_view_center("Enemy switched stances to " + stance[? "name"]);
	} else {
		var action_index = 5; // cry = 0, confuse = 1, sad attack = 2, rage = 3, angry attack = 4, content attack = 5, heal = 6
		var action = actions[| action_index];
		state = asset_get_index(action[? "action"]);
	}
} else if (o_player_battle_unit.sad_stance) {
	var action_index = 5;
	var action = actions[| action_index];
	state = asset_get_index(action[? "action"]);
} else if (o_player_battle_unit.angry_stance) {
	if (chance(0.60)) {
		var stance_index = 0;
		var stance = stances[| stance_index];
		state = asset_get_index(stance[? "stance"]);
		scr_create_message_at_view_center("Enemy switched stances to " + stance[? "name"]);
	} else if (chance(0.40)) {
		var stance_index = 1;
		var stance = stances[| stance_index];
		state = asset_get_index(stance[? "stance"]);
		scr_create_message_at_view_center("Enemy switched stances to " + stance[? "name"]);
	} else {
		var action_index = 5;
		var action = actions[| action_index];
		state = asset_get_index(action[? "action"]);
	}
}