///scr_set_layer_depth(layername, yoffset)
var layername = argument0;
var yoffset = argument1;

// get array of tiles
var layer_id = layer_get_id(layername);
//layer_get_all_elements()

//layer_depth(layer_id, -layer_get_y(layer_id) + yoffset);
//var layer_ids = layer_get_id_at_depth(layerdepth);

//// loop through the array
//var array_size = array_length_1d(layer_ids);
//for (var i = 0; i < array_size; i++) {
//	var layer_id = layer_ids[i];
	
//	// make sure tile exists
//	if (layer_exists(layer_id)) {
//		layer_depth(layer_id, -layer_get_y(layer_id) + yoffset);
//	}
//}

//var a = layer_get_all_elements(layer_id);
//for (var i = 0; i < array_length_1d(a); i++;) {
//	var element = a[i];
	
//	if (instance_exists(element) {
		
//}