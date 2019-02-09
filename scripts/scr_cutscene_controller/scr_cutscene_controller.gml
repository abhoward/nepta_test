///@description controls which cutscene to run and when
///@arg dialogue_state
///@arg room_state
///@arg cutscene

var dialogue_state = argument0;
var room_state = argument1;
var cutscene = argument2;

if (dialogue_state == "day2_start" && room_state  == "day2") {
	create_cutscene(cutscene);
}