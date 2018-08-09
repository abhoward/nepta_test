/// @description  Initialize the character parent
event_inherited();
targetx = noone;
targety = noone;

facing = RIGHT;

// initializing npcs wandering variables
wander = false;
walk_spd = 0;
choosex = 0;
choosey = 0;
xmax = 0;
ymax = 0;
can_approach = false;

is_cutscene = false; // need to tell various objects if its being called by a cutscene or not
choice_variable	= -1;	// the variable we change depending on the player's choice in dialogue

// Create the sprite array
sprite[RIGHT] = s_jane_walk_right;
sprite[UP] = s_jane_walk_up;
sprite[LEFT] = s_jane_walk_left;
sprite[DOWN] = s_jane_walk_down;
sprite[WAKE] = s_jane_wake_up;