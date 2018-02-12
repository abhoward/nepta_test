/// @description
event_inherited();

if (keyboard_check_pressed(vk_escape)) {
	instance_destroy();
}

switch (action) {
	    case 0: scr_character_move_to(o_jane, -410, 0, true, o_jane.spd, 0); break;
		case 1: scr_character_face_direction(o_jane, LEFT, .5); break;
		case 2: scr_character_show_dialog(o_art, array("Oh! You’re finally awake!", "My name is Art. What’s your name?")); break;
	    case 3: scr_character_show_dialog(o_jane, array("Uh...Jane. It’s Jane. Where exactly am I?")); break;
		case 4: scr_character_show_dialog(o_art, array("You’re currently in the city of Salvus. Well, Salvus’ hospital to be exact.", "Myself and a few others took you here after you arrived from the heavens!")); break;
		case 5: scr_character_show_dialog(o_jane, array("I’m sorry, what? Arrived from the heavens?", "What is exactly going on? And why can’t I remember anything?")); break;
	    //case 6: scr_wait(2); break;
		case 6: scr_character_show_dialog(o_art, array("Ah yes yes, of course. Let me explain everything from the beginning…")); break;
		//case 3: o_jane.image_blend = c_red; action++; break;
	    //case 4: scr_cutscene_show_message("The cutscene is over."); break;
	    //case 5: scr_wait(.5); break;
	    //case 6: o_jane.image_blend = c_white; action++; break;
	    default: instance_destroy();
}