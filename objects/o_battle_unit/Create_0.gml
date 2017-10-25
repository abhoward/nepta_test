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
poison_pos = 0;
poison_hit = false;
poison_created = false;

raged = false;

// Set up the state
state = scr_battle_idle_state;

// Create the battle unit ui
unit_ui = instance_create_depth(xstart, 16, 0, o_battle_unit_ui);
unit_ui.unit = id;
unit_ui.x -= unit_ui.sprite_width/2;