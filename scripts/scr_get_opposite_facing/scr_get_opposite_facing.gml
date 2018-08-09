///scr_get_facing(facing)
var facing = argument0;

if (facing == RIGHT) {
	return LEFT;
} else if (facing == LEFT) {
	return RIGHT;
} else if (facing == UP) {
	return DOWN;
} else if (facing == DOWN) {
	return UP;
}