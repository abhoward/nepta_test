///@description instantiate cutscene
///@param cutscene
var cutscene = argument0;

show_debug_message("creating cutscene: " + string(asset_get_index(cutscene)));
//show_debug_message("current room1: " + string(room));
instance_create_layer(0, 0, "Cutscenes", asset_get_index(cutscene));
//show_debug_message("current room2: " + string(room));