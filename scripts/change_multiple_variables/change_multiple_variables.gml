///@description change_multiple_variables
///@arg obj_array
///@arg var_name_as_string_array
///@arg new_value_array

var len = array_length_1d(argument0);

for (var i = 0; i < len; i++;) {
	with(argument0[i]) var oid = id;
	variable_instance_set(oid, argument1[i], argument2[i]);
}