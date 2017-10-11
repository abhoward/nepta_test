/// @description  Initialize the battle camera
event_inherited();
spd = .1;
x = 256;
y = room_height/2;
state = scr_battle_view_intro_state;
scr_battle_view_intro_state();