///scr_battle_view_idle_state()
target[? "x"] = room_width * (3/4);
target[? "y"] = room_height * (1/2);

// Approach the view target
scr_view_approach(target[? "x"], target[? "y"], 960, 540, spd / 2, spd);