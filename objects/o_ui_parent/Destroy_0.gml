/// @description  Destroy the child
if (instance_exists(child)) {
    with (child) instance_destroy();
}

// Update the parent
if (instance_exists(parent)) {
    parent.enabled = true;
    parent.child = noone;
    parent.visible = true;
}

// Reactivate the player
if (instance_number(o_ui_parent) == 1) {
    if (instance_exists(o_elizabeth)) {
        o_elizabeth.state = scr_elizabeth_move_state;
    }
}

