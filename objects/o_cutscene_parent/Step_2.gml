switch (action) {
    case 0: character_move_to(o_elizabeth, 32, 0, true, o_elizabeth.spd, 0); break;
    case 1: character_show_dialog(o_elizabeth, array("Hey! This is a cutscene.", "Here is some more dialog.")); break;
    case 2: character_face_direction(o_elizabeth, DOWN, .5); break;
    case 3: o_elizabeth.image_blend = c_red; action++; break;
    case 4: cutscene_show_message("The cutscene is over."); break;
    case 5: wait(.5); break;
    case 6: o_elizabeth.image_blend = c_white; action++; break;
    default: instance_destroy();
}

