/// @description  Initialize the player's states
level = 2;
class = o_data.classes[? "elizabeth"];

// Get the stats from the class
stats = scr_get_stats("elizabeth");
draw_health = stats[? "health"];
//defend = false;

// Items list
items = ds_list_create();
item_number = ds_list_create();
scr_pickup_item(o_data.items[? "potion"], 4);

// Action list
actions = ds_list_create();
var action_index = 0;
actions[| action_index++] = o_data.actions[? "attack"];
//actions[| action_index++] = o_data.actions[? "defend"];
actions[| action_index++] = o_data.actions[? "fire spell"];
actions[| action_index++] = o_data.actions[? "sonar spell"];
actions[| action_index++] = o_data.actions[? "cry"];
actions[| action_index++] = o_data.actions[? "rage"];

// Stance list	
stances = ds_list_create();
var stance_index = 0;
stances[| stance_index++] = o_data.stances[? "sad"];
stances[| stance_index++] = o_data.stances[? "angry"];
stances[| stance_index++] = o_data.stances[? "content"];
//stances[| stance_index++] = o_data.actions[? "fire spell"];