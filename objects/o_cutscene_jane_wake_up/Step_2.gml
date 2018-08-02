/// @description
event_inherited();

if (keyboard_check_pressed(vk_escape)) {
	instance_destroy();
}

switch (action) {
	case 0: scr_character_face_direction([o_jane], [WAKE], 0); break;
	case 1: scr_character_face_direction([o_art], [LEFT], .5); break;
	case 2: scr_character_move_to([o_art], [-200], [0], [true], [3], 3); break;
	case 3: scr_character_face_direction([o_art], [RIGHT], .5); break;
	case 4: scr_character_move_to([o_art], [200], [0], [true], [3], 3); break;
	case 5: scr_character_play_animation(o_jane, s_jane_wake_up); break;
	case 6: scr_wait(2, true); break;
	case 7: scr_character_face_direction([o_jane], [RIGHT], 1); break;
	case 8: scr_character_move_to([o_jane], [75], [0], [true], [2], 1); break;
	case 9: scr_character_face_direction([o_art], [LEFT], .5); break;
	case 10: create_dialogue(["Oh! You're finally awake!"], o_art, [[1, 5, 4, 0]], -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], [11]); break;
	case 11: create_dialogue(["Wha...where am I? Who are you?"], o_jane, [[1, 1]], -1, 0, -1, -1, -1, [PORTRAIT_SAD], [10]); break;
	case 12: create_dialogue(["My name is Art, and you're currently in the grand city of Salvus!"], o_art, -1, -1, 0, -1, -1, [[12, c_red, 15, c_white, 59, c_fuchsia, 65, c_white]], [PORTRAIT_NEUTRAL], -1); break;
	case 13: create_dialogue(["Salvus...?"], o_jane, -1, -1, 0, -1, -1, [[1, c_fuchsia, 7, c_white]], [PORTRAIT_NEUTRAL], -1); break;
	case 14: create_dialogue(["You've never heard of it, have you? Well, I'm not surprised. In fact I'd be shocked if you knew or remembered much of anything at all!", "Speaking of which, do you remember your name at least?"], [o_art, o_art], -1, -1, [0, 0], -1, -1, -1, [PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL], -1); break;
	case 15: create_dialogue(["It's Jane...I think. Wait, how do you know I can't remember anything?"], o_jane, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 16: create_dialogue(["Well you did just come from the heavens, and I've never heard of Valkyries remembering anything when they've landed."], o_art, [[66, 4, 75, 0]], -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 17: create_dialogue(["Whoa whoa whoa, back up. I came from the heavens? And what are Valkyries?"], o_jane, [[64, 4, 73, 0]], -1, 0, -1, -1, -1, [PORTRAIT_ANNOYED], -1); break;
	case 18: create_dialogue(["Ah yes, of course. Let me explain everything from the beginning..."], o_art, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 19: create_textevent(["INSERT EXPOSITION HERE"], -1, -1, -1, 0, -1, -1, [[1, c_black]], -1, -1)
	case 20: create_dialogue(["Wow...that's a lot to take in."], o_jane, -1, -1, 0, -1, -1, -1, [PORTRAIT_ANNOYED], -1); break;
	case 21: create_dialogue(["I know. I don't expect you to absorb it all immediately. For now, let's just go outside so I can introduce you to the others."], o_art, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 22: create_dialogue(["The others?"], o_jane, -1, -1, 0, -1, -1, -1, [PORTRAIT_ANNOYED], -1); break;
	case 23: create_dialogue(["Hah! You didn't think I was the only one here, did you?", "Sure, I'm the leader of our small community, but there are plenty of others that have always wanted to meet a Valkyrie. C'mon, let’s say hello!"], [o_art, o_art], [[1, 2, 5, 0], [-1]], -1, [0, 0], -1, -1, -1, [PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL], -1); break;
	case 24: scr_character_move_to([o_art], [-116], [0], [true], [4.5], 0); break;
	case 25: scr_character_move_to([o_art], [0], [100], [true], [4.5], 0); 
	case 26: scr_cutscene_destroy_object(o_art, 0.025, a_electric_door); break;
	case 27: create_dialogue(["Guess I don't have much of a choice..."], o_jane, -1, -1, 0, -1, -1, -1, [PORTRAIT_ANNOYED], -1); break;
	case 28: instance_destroy(); break;
	default: instance_destroy();
}