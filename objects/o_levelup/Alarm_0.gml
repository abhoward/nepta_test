/// @description  Go to last room
var transition = instance_create(0, 0, o_fade_transition);
transition.next_room = o_game.last_room;
instance_destroy();

