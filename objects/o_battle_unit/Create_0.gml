/// @description  Initialize the battle unit
action_meter = 0;
max_action_meter = 100;
item_index = 0;
hitflash = false;

// Stances
sad_stance = true;
angry_stance = false;
content_stance = false;

// Status Effects
poisoned = false;
//poison_pos = 0;
poison_hit = false;

//if (object_index == o_player_battle_unit) {
//	poison_hit_player = false;	
//}

//if (object_index == o_enemy_battle_unit) {
//	poison_hit_enemy = false;
//}

// Set up the state
state = scr_battle_idle_state;

// Create the battle unit ui
var unit_ui = instance_create_depth(xstart, 16, 0, o_battle_unit_ui);
unit_ui.unit = id;
unit_ui.x -= unit_ui.sprite_width/2;