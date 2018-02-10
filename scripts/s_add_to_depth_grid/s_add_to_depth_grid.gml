with(o_draw) {
	//the first instance creates the grid
	if(!ds_exists(ds_depthgrid, ds_type_grid)) {
		//create the depthgrid data structure
		ds_depthgrid = ds_grid_create(2, 1); //2 wide, 1 high

		//add its id to grid
		ds_depthgrid[# 0, 0] = other; // other gets the instance thats outside of the instance (in this case s_add_to_depth_grid)

		//add its y value to grid
		ds_depthgrid[# 1, 0] = other.y;
	} else {
		//resize the current grid (increment +1)
		var gridHeight = ds_grid_height(ds_depthgrid);
		ds_grid_resize(ds_depthgrid, 2, gridHeight + 1);
		
		//add oureselves to the grid
		ds_depthgrid[# 0, gridHeight] = other;
		
		//add y value
		ds_depthgrid[# 1, gridHeight] = other.y;
	}
}