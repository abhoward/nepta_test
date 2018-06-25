/// @description  Create the player battle object
event_inherited();

//if (art == true) {
//	name = "gargoyle";
//} else {
//	name = "spider";
//}
//} else (o_game.last_room == r_salvus) {

if (global.in_cutscene) {
	name = "spider";
} else {
	name = "gargoyle";
}

scr_init_battle_unit(name, 1, true, .3, .4, .2, .4);