///@description Destroy a given list and increase action by 1
///@arg data_structure

var data_structure = argument0;

if (ds_exists(data_structure, ds_type_map)) {
	ds_map_destroy(data_structure);
} else if (ds_exists(data_structure, ds_type_list)) {
	ds_list_destroy(data_structure);
} else if (ds_exists(data_structure, ds_type_stack)) {
	ds_stack_destroy(data_structure);
} else if (ds_exists(data_structure, ds_type_grid)) {
	ds_grid_destroy(data_structure);
} else if (ds_exists(data_structure, ds_type_queue)) {
	ds_queue_destroy(data_structure);
} else if (ds_exists(data_structure, ds_type_priority)) {
	ds_priority_destroy(data_structure);
} 

if (instance_exists(o_cutscene_parent)) {
	action++;
}