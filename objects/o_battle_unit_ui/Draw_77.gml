/// @description Insert description here
// You can write your code in this editor
if (o_player_battle_unit.poisoned) {
	instance_destroy(o_player_poison_line);
	instance_create_depth(o_battle_unit_ui.x + 3 + global.player_poison_pos, y + 8, -100, o_player_poison_line);
}

if (o_enemy_battle_unit.poisoned) {
	instance_destroy(o_enemy_poison_line);
	instance_create_depth(o_battle_unit_ui.x + 3 + global.enemy_poison_pos, y + 8, -100, o_enemy_poison_line);
}