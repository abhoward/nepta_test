/// @description  Initialize the Jane object
event_inherited();
spd = 6;
image_speed = 0;
facing = RIGHT;
state = scr_jane_move_state;
last_room = room;

// Create the portrait array
portrait[PORTRAIT_NEUTRAL] = s_jane_portrait_neutral;
portrait[PORTRAIT_SAD] = s_jane_portrait_sad;
portrait[PORTRAIT_ANGRY] = s_jane_portrait_angry;
portrait[PORTRAIT_HAPPY] = s_jane_portrait_happy;
portrait[PORTRAIT_ANNOYED] = s_jane_portrait_annoyed;
portrait[PORTRAIT_EMBARRASSED] = s_jane_portrait_embarrassed;

// Create the sprite array
sprite[RIGHT] = s_jane_walk_right;
sprite[UP] = s_jane_walk_up;
sprite[LEFT] = s_jane_walk_left;
sprite[DOWN] = s_jane_walk_down;
sprite[WAKE] = s_jane_wake_up;