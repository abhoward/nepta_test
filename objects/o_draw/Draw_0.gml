/// @description Insert description here

if(ds_exists(ds_depthgrid, ds_type_grid)) {
	//sort grid by y value in asc order
	ds_grid_sort(ds_depthgrid, 1, true);
	
	//draw instances in asc order of y values
	for(var yy = 0; yy < ds_grid_height(ds_depthgrid); yy++) {
		//draw the instance
		var instanceID = ds_depthgrid[# 0, yy];
		
		with(instanceID) {
			draw_self();
		}
	}
	
	ds_grid_destroy(ds_depthgrid);
}