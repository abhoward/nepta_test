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

// Poison
poisoned = false;
poison_pos = 0;
poison_hit = false;
poison_created = false;
poison_timer = 0;
poison_cooldown = 0;
poison_passed = false;

// Confuse
confused = false;
confuse_pos = 0;
confuse_hit = false;
confuse_created = false;
confuse_timer = 0;
confuse_cooldown = 0;
confuse_passed = false;

// Rage
raged = false;
rage_cooldown = 0;

// Set up the state
if (sad_stance) {
	state = scr_battle_idle_sad_state;
} else if (angry_stance) {
	state = scr_battle_idle_angry_state;
} else if (content_stance) {
	state = scr_battle_idle_state;
}

// Create the battle unit ui
unit_ui = instance_create_depth(xstart, 16, 0, o_battle_unit_ui);
unit_ui.unit = id;
unit_ui.x -= unit_ui.sprite_width/2;