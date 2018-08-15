/// @description
event_inherited();

if (keyboard_check_pressed(vk_escape)) {
	instance_destroy();
}

switch (action) {
	case 0: scr_cutscene_destroy_list(o_jane.talked_to);
	case 1: scr_character_move_to([o_jane], [244], [356], [false], [2], false, 2); break;
	case 2: scr_character_face_direction([o_jane], [SLEEP], 0); break;
	case 3: scr_character_play_animation(o_jane, s_jane_sleep, 0.2); break;
	case 4: scr_cutscene_fade_transition(1, 0.025, 4); break;
	case 5: scr_character_face_direction([o_jane], [WAKE], 0); break;
	case 6: scr_character_play_animation(o_jane, s_jane_wake_up, 0.2); break;
	case 7: scr_character_move_to([o_jane], [75], [0], [true], [2], false, 1); break;
	default: instance_destroy();
}