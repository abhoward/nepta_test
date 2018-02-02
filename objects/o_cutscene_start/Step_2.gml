/// @description
event_inherited();

switch (action) {
    case 0: scr_character_move_to(o_jane, 42, 0, true, o_jane.spd, 0); break;
	case 1: scr_character_face_direction(o_jane, UP, .5); break;
	case 2: scr_character_show_dialog(o_adam, array("Hey Jane! What are you doing up so early?!", "I thought you'd sleep in more after partying so hard last night!")); break;
    case 3: scr_character_show_dialog(o_jane, array("...partying? I, uh, don't know what you're talking about.")); break;
	case 4: scr_character_show_dialog(o_adam, array("Jane. Our houses are literally right next to each other. I could hear you through my earplugs.")); break;
	case 5: scr_character_show_dialog(o_jane, array("Oh. Right. Sorry.", "But I wasn't partying. I was having sex.")); break;
    //case 6: scr_wait(2); break;
	case 6: scr_character_show_dialog(o_adam, array("...oh my.")); break;
	//case 3: o_jane.image_blend = c_red; action++; break;
    //case 4: scr_cutscene_show_message("The cutscene is over."); break;
    //case 5: scr_wait(.5); break;
    //case 6: o_jane.image_blend = c_white; action++; break;
    default: instance_destroy();
}