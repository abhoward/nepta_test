/// @description  Fade
white_alpha = lerp(white_alpha, target_white_alpha, .2);
if (orange_alpha > target_orange_alpha) {
    // Fade in
    orange_alpha = lerp(orange_alpha, target_orange_alpha, .075);
} else {
    // Fade out
    orange_alpha = lerp(orange_alpha, target_orange_alpha, .2);
}

// Go to battle room
if (room != r_battle) {
    if (abs(target_white_alpha-white_alpha) <= .2) {
        room_persistent = true;
        room_goto(r_battle);
        o_game.last_room = room;
    }
} else {
    // Destroy the transition
    if (abs(target_white_alpha-white_alpha) <= .01) {
        instance_destroy();
    }
}

