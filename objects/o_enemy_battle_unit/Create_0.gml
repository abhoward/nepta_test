/// @description  Create the player battle object
event_inherited();
if (o_game.last_room == r_salvus) {
	name = choose("spider", "gargoyle");
} else {
	name = "gargoyle";
}

scr_init_battle_unit(name, 1, true, .3, .4, .2, .4);