/// @description  Initialize the Elizabeth object
event_inherited();
spd = 2;
image_speed = 0;
facing = RIGHT;
state = scr_elizabeth_move_state;
last_room = room;
portrait = s_elizabeth_portrait;

// Create the sprite array
sprite[RIGHT] = s_jane_walk_right;
sprite[UP] = s_jane_walk_up;
sprite[LEFT] = s_jane_walk_left;
sprite[DOWN] = s_jane_walk_down;