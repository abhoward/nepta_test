/// @description
event_inherited();

// 768, 288

if (keyboard_check_pressed(vk_escape)) {
	instance_destroy();
}

switch (action) {
	case 0: instance_create_layer(768, 288, "Instances", o_art); break;
	case 1: scr_character_face_direction([o_art], [LEFT], 0); break;
	case 2: create_dialogue(["G'mornin'! You ready for the trials?"], o_art, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 3: create_dialogue(["You guys don't waste any time, do you?"], o_jane, -1, -1, 0, -1, -1, -1, [PORTRAIT_ANNOYED], -1); break;
	case 4: create_dialogue(["Hoho, well you know what they say about wasting time!"], o_art, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 5: create_dialogue(["I don't, actually. Amnesia, remember?"], o_art, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 6: create_dialogue(["Oh. Right."], o_art, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 7: create_dialogue(["..."], o_jane, -1, -1, 0, -1, -1, -1, [PORTRAIT_ANNOYED], -1); break;
	case 8: create_dialogue(["...", "Erm...Just follow me and I'll take you to the trials. That was awkward..."], [o_art, o_art], [-1, [55, 3]], -1, [0, 0], -1, -1, -1, [PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL], -1); break;
	case 9: scr_character_move_to([o_art, o_phae, o_horace, o_gwen, o_rose], [-700, -500, -500, -500, -500], [0, 0, 0, 0, 0], [true, true, true, true, true], [4, 4, 4, 4, 4], false, 0); break;
	case 10: scr_cutscene_destroy_object([o_art, o_phae, o_horace, o_gwen, o_rose], [0.025, 0.025, 0.025, 0.025, 0.025], [0, 0, 0, 0, 0]); break;
	case 11: instance_destroy(); break;
	default: instance_destroy();
}