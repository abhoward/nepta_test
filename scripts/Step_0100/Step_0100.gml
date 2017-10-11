/// @description Update background positions
var xscale = view_wview[0] / (room_width / 2);
var yscale = view_hview[0] / (room_height);

// Sky
layer_x(sky_layer_id, view_xview[0]);
layer_y(sky_layer_id, view_yview[0]);
//layer_background_xscale(sky_layer_id, xscale);
//layer_background_yscale(sky_layer_id, yscale);

// Mountains
layer_x(mountain_layer_id, (view_xview[0] / 1.25) + mountain_layer_x);
layer_y(mountain_layer_id, (view_yview[0] / 2.75));

// Other backgrounds
layer_x(trees_bg_layer_id, (view_xview[0] / 2) + trees_bg_layer_x);
layer_x(tree_layer_id, (view_xview[0] / 2.75) + tree_layer_x);
layer_x(grass_layer_id, grass_layer_x - (view_xview[0] / 2.75));
layer_x(grass_fg_layer_id, grass_fg_layer_x - (view_xview[0]));
layer_x(trees_fg_layer_id, trees_fg_layer_x - (view_xview[0] / 0.8));