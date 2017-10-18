/// @description  Initialize the battle unit
action_meter = 0;
max_action_meter = 100;
item_index = 0;
hitflash = false;

sad_stance = false;
angry_stance = false;
normal_stance = true;

// Set up the state
state = scr_battle_idle_state;

// Create the battle unit ui
var unit_ui = instance_create_depth(xstart, 16, 0, o_battle_unit_ui);
unit_ui.unit = id;
unit_ui.x -= unit_ui.sprite_width/2;