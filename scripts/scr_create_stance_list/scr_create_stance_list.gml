///scr_create_stance_list()
var list = ds_list_create();
var name_list = stats[? "stances"];
for (var i = 0; i < ds_list_size(name_list); i++) {
	list[| i] = o_data.stances[? name_list[| i]];
}

return list;