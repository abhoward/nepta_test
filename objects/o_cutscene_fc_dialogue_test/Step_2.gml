/// @description
event_inherited();

if (keyboard_check_pressed(vk_escape)) {
	instance_destroy();
}

switch (action) {
	case 0: scr_character_face_direction(o_jane, WAKE, 0); break;
	case 1: scr_character_face_direction(o_art, LEFT, .5); break;
	case 2: scr_character_move_to(o_art, -200, 0, true, 3, 3); break;
	//case 3: scr_character_show_dialog(o_art, PORTRAIT_NEUTRAL, array("My name is Art, and you're currently in the grand city of Salvus!")); break;
	case 3: create_dialogue(["Testing, testing..."], o_jane, [[1, 2, 8, 1]], [[1, 0.5, 8, 1]], 0, -1, -1, [[10, c_blue, 16, c_white]], [PORTRAIT_SAD], -1); break;
	case 4: scr_character_move_to(o_art, 200, 0, true, 3, 3); break;
	//case 4: scr_character_show_dialog(o_jane, PORTRAIT_SAD, array("Wha...where am I? Who are you?")); break;
	//case 5: scr_character_show_dialog(o_art, PORTRAIT_NEUTRAL, array("My name is Art, and you're currently in the grand city of Salvus!")); break;
	//case 6: scr_character_show_dialog(o_jane, PORTRAIT_NEUTRAL, array("Salvus...never heard of it.")); break;
	//case 7: scr_character_show_dialog(o_art, PORTRAIT_NEUTRAL, array("Well I'd assume so. You just came from the heavens, so I'd be surprised if you knew or remembered much of anything at all!")); break;
	//case 8: scr_character_show_dialog(o_jane, PORTRAIT_ANNOYED, array("I'm sorry...what? Came from the heavens? What do you mean?")); break;
	//case 9: scr_character_show_dialog(o_art, PORTRAIT_NEUTRAL, array("Ah yes, of course. Let me explain everything from the beginning...")); break;
	//case 10: scr_cutscene_show_message("INSERT EXPOSITION HERE"); break;
	//case 19: scr_character_show_dialog(o_jane, PORTRAIT_ANNOYED, array("Wow...that's a lot to take in.")); break;
	//case 20: scr_character_show_dialog(o_art, PORTRAIT_NEUTRAL, array("Sorry, I know. I'm not expecting you to absorb it all this second. For now, let's just go outside so I can introduce you to the others.")); break;
	//case 21: scr_character_show_dialog(o_jane, PORTRAIT_ANNOYED, array("...the others?")); break;
	//case 22: scr_character_show_dialog(o_art, PORTRAIT_NEUTRAL, array("You didn't think I was the only one here, did you? Sure, I'm the leader of our small community, but there are plenty of others that have always wanted to meet a Valkyrie. C'mon, let’s say hello!")); break;
	//case 23: scr_character_move_to(o_art, -116, 0, true, 4.5, 1);
	//case 24: scr_character_move_to(o_art, 0, 100, true, 4.5, 1);
	//case 25: scr_cutscene_destroy_object(o_art, 0.05, a_electric_door);
	//case 26: scr_character_show_dialog(o_jane, PORTRAIT_ANNOYED, array("Guess I don't have much of a choice...")) break;
	case 5: instance_destroy(); break;
	default: instance_destroy();
}