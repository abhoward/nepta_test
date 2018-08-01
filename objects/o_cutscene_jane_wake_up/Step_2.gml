/// @description
event_inherited();

if (keyboard_check_pressed(vk_escape)) {
	instance_destroy();
}

switch (action) {
	case 0: scr_character_face_direction(o_jane, WAKE, 0); break;
	case 1: scr_character_face_direction(o_art, LEFT, .5); break;
	case 2: scr_character_move_to(o_art, -200, 0, true, 3, 3); break;
	case 3: scr_character_face_direction(o_art, RIGHT, .5); break;
	case 4: scr_character_move_to(o_art, 200, 0, true, 3, 3); break;
	case 5: scr_character_play_animation(o_jane, s_jane_wake_up); break;
	case 6: scr_wait(2); break;
	case 7: scr_character_face_direction(o_jane, RIGHT, 1); break;
	case 8: scr_character_move_to(o_jane, 75, 0, true, 2, 1); break;
	case 9: scr_character_face_direction(o_art, LEFT, .5); break;
	case 10: create_dialogue(["Oh! You're finally awake!"], o_art, [[1, 5, 4, 0]], -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], [11]); break;
	case 11: create_dialogue(["Wha...where am I? Who are you?"], o_jane, [[1, 1]], -1, 0, -1, -1, -1, [PORTRAIT_SAD], [10]); break;
	case 12: create_dialogue(["My name is Art, and you're currently in the grand city of Salvus!"], o_art, -1, -1, 0, -1, -1, [[12, c_red, 15, c_white, 59, c_fuchsia, 65, c_white]], [PORTRAIT_NEUTRAL], -1); break;
	case 13: create_dialogue(["Salvus...never heard of it."], o_jane, -1, -1, 0, -1, -1, [[1, c_fuchsia, 7, c_white]], [PORTRAIT_NEUTRAL], -1); break;
	case 14: create_dialogue(["Well I'm not surprised. You just came from the heavens, so I'd be shocked if you knew or remembered much of anything at all!"], o_art, [[48, 4, 55, 0]], -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 15: create_dialogue(["I'm sorry...what? Came from the heavens? What do you mean?"], o_jane, -1, -1, 0, -1, -1, -1, [PORTRAIT_ANNOYED], -1); break;
	case 16: create_dialogue(["Ah yes, of course. Let me explain everything from the beginning..."], o_art, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 17: scr_cutscene_show_message("INSERT EXPOSITION HERE"); break;
	case 18: create_dialogue(["Wow...that's a lot to take in."], o_jane, -1, -1, 0, -1, -1, -1, [PORTRAIT_ANNOYED], -1); break;
	case 19: create_dialogue(["I know. I'm not expecting you to absorb it all this second. For now, let's just go outside so I can introduce you to the others."], o_art, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 20: create_dialogue(["...the others?"], o_jane, -1, -1, 0, -1, -1, -1, [PORTRAIT_ANNOYED], -1); break;
	case 21: create_dialogue(["Hah! You didn't think I was the only one here, did you?", "Sure, I'm the leader of our small community, but there are plenty of others that have always wanted to meet a Valkyrie. C'mon, let’s say hello!"], [o_art, o_art], -1, -1, [0, 0], -1, -1, -1, [PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL], -1); break;
	case 22: scr_character_move_to(o_art, -116, 0, true, 4.5, 0); break;
	case 23: scr_character_move_to(o_art, 0, 100, true, 4.5, 0); 
	case 24: scr_cutscene_destroy_object(o_art, 0.025, a_electric_door); break;
	case 25: create_dialogue(["Guess I don't have much of a choice..."], o_jane, -1, -1, 0, -1, -1, -1, [PORTRAIT_ANNOYED], -1); break;
	case 26: instance_destroy(); break;
	default: instance_destroy();
}