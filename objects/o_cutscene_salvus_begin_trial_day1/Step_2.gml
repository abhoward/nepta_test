/// @description
event_inherited();

if (keyboard_check_pressed(vk_escape)) {
	instance_destroy();
}

switch (action) {
	case 0: scr_cutscene_create_instance(768, 288, "Instances", o_art); break;
	case 1: scr_character_face_direction([o_art], [LEFT], 0); break;
	case 2: create_dialogue(["G'mornin'!"], o_art, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 3: scr_character_face_direction([o_jane], [RIGHT], 0); break;
	case 4: create_dialogue(["HOLY MOTHER OF MOLY"], o_jane, -1, -1, 0, -1, -1, -1, [PORTRAIT_SURPRISED], [11]); break;
	case 5: create_dialogue(["...excuse me?"], o_art, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], [10]); break;
	case 6: create_dialogue(["Sorry...you scared me, jumping out like that."], o_jane, -1, -1, 0, -1, -1, -1, [PORTRAIT_EMBARRASSED], -1); break;
	case 7: create_dialogue(["Oho, I didn't jump out! Quite the opposite, in fact. I've been here for the past 3 hours watching you sleep through the window!"], o_art, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 8: create_dialogue(["Oh god, that's, uh...great? Note to self, close the curtains next time..."], o_jane, [[29, 8]], -1, 0, -1, -1, -1, [PORTRAIT_ANNOYED], -1); break;
	case 9: create_dialogue(["Anyway, what do you want?"], o_jane, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 10: create_dialogue(["What, did you get amnesia again? It's time for the trials!"], o_art, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 11: create_dialogue(["Oh. Right. You guys don't waste any time, do you?"], o_jane, -1, -1, 0, -1, -1, -1, [PORTRAIT_ANNOYED], -1); break;
	case 12: create_dialogue(["Hoho, well you know what they say about wasting time!"], o_art, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 13: create_dialogue(["I don't, actually. Amnesia, remember?"], o_jane, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 14: create_dialogue(["Oh. Right."], o_art, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 15: create_dialogue(["..."], o_jane, -1, -1, 0, -1, -1, -1, [PORTRAIT_ANNOYED], -1); break;
	case 16: create_dialogue(["...", "This way to the trials, please! Follow me!"], [o_art, o_art], [-1, [55, 3]], -1, [0, 0], -1, -1, -1, [PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL], -1); break;
	case 17: scr_character_move_to([o_art], [-800], [0], [true], [6], false, 1); break;
	case 18: scr_cutscene_destroy_object([o_art], [0.025], [0]); break;
	case 19: instance_destroy(); break;
	default: instance_destroy();
}