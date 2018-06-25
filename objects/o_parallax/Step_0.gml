/// @description Update background positions
var xscale = view_wview[0] / (room_width / 2);
var yscale = view_hview[0] / (room_height);

// Backdrop
layer_x(backdrop_layer_id, view_xview[0]);
layer_y(backdrop_layer_id, view_yview[0]);
//layer_background_xscale(sky_layer_id, xscale);
//layer_background_yscale(sky_layer_id, yscale);

// Buildings
layer_x(buildings_layer_id, (view_xview[0] / 1.25) + buildings_layer_x);
layer_y(buildings_layer_id, (view_yview[0] / 2.75));

// Sidewalk
layer_x(sidewalk_layer_id, (view_xview[0] / 2.5) + sidewalk_layer_x);
layer_y(sidewalk_layer_id, (view_yview[0] / 5.5));

// Other backgrounds
//layer_x(trees_bg_layer_id, (view_xview[0] / 2) + trees_bg_layer_x);
//layer_x(tree_layer_id, (view_xview[0] / 2.75) + tree_layer_x);
//layer_x(grass_layer_id, grass_layer_x - (view_xview[0] / 2.75));
//layer_x(grass_fg_layer_id, grass_fg_layer_x - (view_xview[0]));
//layer_x(trees_fg_layer_id, trees_fg_layer_x - (view_xview[0] / 0.8));