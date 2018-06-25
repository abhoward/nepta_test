/// @description  Set Jane back to the move state
if (instance_exists(o_jane)) {
    o_jane.state = scr_jane_move_state;
}

if (instance_exists(o_view)) {
    o_view.state = scr_view_follow_jane_state;
}

global.save_data[? scr_save_key()] = true;