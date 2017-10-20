///scr_init_battle_unit(name, level, is_enemy, idle_speed, attack_speed, hit_speed, ranged_speed)
var name = argument0;
var level = argument1;
var is_enemy = argument2;
var idle_speed = argument3;
var attack_speed = argument4;
var hit_speed = argument5;
var ranged_speed = argument6;

// Create the battle unit level
id.level = level;

// Set the stats object
stats_object = id;
if (!is_enemy) {
	stats_object = o_player_stats;
}

// Set up the enemy stats
if (is_enemy) {
	stats = scr_get_stats(name);
	draw_health = stats[? "health"];
	//defend = false;
	
	// Create the actions and stances list
	actions = scr_create_action_list();
	stances = scr_create_stance_list();
}

// Set the image_xscale
image_xscale = 1 - is_enemy * 2;

// Set sprite array
sprite[IDLE] = asset_get_index("s_battle_" + name + "_idle");
sprite[APPROACH] = asset_get_index("s_battle_" + name + "_approach");
sprite[ATTACK] = asset_get_index("s_battle_" + name + "_attack");
sprite[RETURN] = asset_get_index("s_battle_" + name + "_return");
sprite[HIT] = asset_get_index("s_battle_" + name + "_hit");
sprite[RANGED] = asset_get_index("s_battle_" + name + "_ranged");

sprite[IDLE_SAD] = asset_get_index("s_battle_" + name + "_idle_sad");
sprite[APPROACH_SAD] = asset_get_index("s_battle_" + name + "_approach_sad");
sprite[ATTACK_SAD] = asset_get_index("s_battle_" + name + "_attack_sad");
sprite[RETURN_SAD] = asset_get_index("s_battle_" + name + "_return_sad");
sprite[HIT_SAD] = asset_get_index("s_battle_" + name + "_hit_sad");
sprite[RANGED_SAD] = asset_get_index("s_battle_" + name + "_ranged_sad");

sprite[IDLE_ANGRY] = asset_get_index("s_battle_" + name + "_idle_angry");
sprite[APPROACH_ANGRY] = asset_get_index("s_battle_" + name + "_approach_angry");
sprite[ATTACK_ANGRY] = asset_get_index("s_battle_" + name + "_attack_angry");
sprite[RETURN_ANGRY] = asset_get_index("s_battle_" + name + "_return_angry");
sprite[HIT_ANGRY] = asset_get_index("s_battle_" + name + "_hit_angry");
sprite[RANGED_ANGRY] = asset_get_index("s_battle_" + name + "_ranged_angry");

// Set animation speed array
animation_speed[IDLE] = idle_speed;
animation_speed[APPROACH] = 0;
animation_speed[ATTACK] = attack_speed;
animation_speed[RETURN] = 0;
animation_speed[HIT] = hit_speed;
animation_speed[RANGED] = ranged_speed;
animation_speed[IDLE_SAD] = idle_speed;
animation_speed[IDLE_ANGRY] = idle_speed;
animation_speed[APPROACH_SAD] = 0;
animation_speed[APPROACH_ANGRY] = 0;
animation_speed[ATTACK_SAD] = attack_speed;
animation_speed[ATTACK_ANGRY] = attack_speed;
animation_speed[RETURN_SAD] = 0;
animation_speed[RETURN_ANGRY] = 0;
animation_speed[HIT_SAD] = hit_speed;
animation_speed[HIT_ANGRY] = hit_speed;
animation_speed[RANGED_SAD] = ranged_speed;
animation_speed[RANGED_ANGRY] = ranged_speed;

// Set the sprite
image_speed = animation_speed[IDLE];
sprite_index = sprite[IDLE];