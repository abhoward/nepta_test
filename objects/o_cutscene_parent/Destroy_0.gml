/// @description  Set Elizabeth back to the move state
if (instance_exists(o_elizabeth)) {
    o_elizabeth.state = elizabeth_move_state;
}

if (instance_exists(o_view)) {
    o_view.state = view_follow_elizabeth_state;
}

global.save_data[? save_key()] = true;

