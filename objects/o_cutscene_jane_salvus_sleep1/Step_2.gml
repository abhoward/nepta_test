/// @description
event_inherited();

if (keyboard_check_pressed(vk_escape)) {
	instance_destroy();
}

switch (action) {
	case 0: scr_cutscene_destroy_data_structure(o_jane.talked_to); break;
	case 1: scr_character_move_to([o_jane], [243], [346], [false], [2], false, 2); break;
	case 2: scr_character_face_direction([o_jane], [SLEEP], 0); break;
	case 3: scr_character_play_animation(o_jane, s_jane_sleep, 0.2); break;
	case 4: scr_cutscene_fade_out(1, 0.025); break;
	case 5: create_textevent(["You realize what could happen, right? What the consequences are?", "I know. I don't care.", "Even if it means losing your memories forever?", "..."], -1,-1,-1,-1,-1,-1,-1,-1,-1); break;
	case 6: scr_cutscene_fade_in(0, 0.025); break;
	case 7: scr_character_face_direction([o_jane], [WAKE], 0); break;
	case 8: scr_character_play_animation(o_jane, s_jane_wake_up, 0.2); break;
	case 9: scr_character_move_to([o_jane], [75], [0], [true], [2], false, 1); break;
	case 10: create_dialogue(["That was one hell of a dream...", "Whatever, can't let it distract me from geting ready for these peoples' weird ass trials. It's my only hope of figuring out what the fuck I'm doing."], o_jane, -1, -1, -1, -1, -1, -1, [PORTRAIT_ANNOYED, PORTRAIT_NEUTRAL], [10, -1]); break;
	default: instance_destroy();
}