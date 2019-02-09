///@description move character to x, y position
///@arg x
///@arg y
///@arg layer
///@arg instance(s)

var xx = argument0;
var yy = argument1;
var instance_layer = argument2;
var instance = argument3;

//var i = array_length_1d(characters) - 1;
instance_create_layer(xx, yy, instance_layer, instance);
action++;