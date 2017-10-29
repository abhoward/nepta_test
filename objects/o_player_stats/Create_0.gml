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

// Action lists
content_actions = ds_list_create();
sad_actions = ds_list_create();
angry_actions = ds_list_create();

var content_action_index = 0;
var sad_action_index = 0;
var angry_action_index = 0;

content_actions[| content_action_index++] = o_data.actions[? "content attack"];
content_actions[| content_action_index++] = o_data.actions[? "fire spell"];
content_actions[| content_action_index++] = o_data.actions[? "sonar spell"];

sad_actions[| sad_action_index++] = o_data.actions[? "sad attack"];
sad_actions[| sad_action_index++] = o_data.actions[? "cry"];

angry_actions[| angry_action_index++] = o_data.actions[? "angry attack"];
angry_actions[| angry_action_index++] = o_data.actions[? "rage"];

//actions[| action_index++] = o_data.actions[? "defend"];

// Stance list	
stances = ds_list_create();
var stance_index = 0;
stances[| stance_index++] = o_data.stances[? "sad"];
stances[| stance_index++] = o_data.stances[? "angry"];
stances[| stance_index++] = o_data.stances[? "content"];