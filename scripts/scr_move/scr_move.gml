///scr_move(hspd, vspd, update_facing)
var hspd = argument0;
var vspd = argument1;
var update_facing = argument2;

// horizontal movement
if (!place_meeting(x + hspd, y, o_solid)) {
	x += hspd;
}

// vertical movement
if (!place_meeting(x, y + vspd, o_solid)) {
	y += vspd;
}

var dir = point_direction(0, 0, hspd, vspd);
var dis = point_distance(0, 0, hspd, vspd);
if (update_facing && dis > 0) {
	facing = scr_get_facing(dir);
}
var moved = x != xprevious || y != yprevious;

// update sprite
if (!moved) {
	image_speed = 0;
	image_index = 0;
} else {
	image_speed = 0.2;

}

// return true if we are able to move
return moved;