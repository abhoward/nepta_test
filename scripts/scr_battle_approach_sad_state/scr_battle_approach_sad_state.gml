///scr_battle_approach_sad_state()
var targetx = xstart + BATTLE_SPACE * image_xscale;
scr_battle_set_sprite(APPROACH_SAD, 0);
var spd = min(28, 64 / image_number);
var random_battle_text = scr_battle_random_dialog();

// Calculate image speed
var frames = scr_get_frames(targetx, xstart, spd);
image_speed = scr_get_image_speed_from_frames(frames, image_number);

// Set the view state
o_battle_view.target[? "x"] = targetx - 128 * image_xscale;
o_battle_view.state = scr_battle_view_focus_state;

// Approach the target
x = approach(x, targetx, spd);

if (x == targetx) {
	scr_create_temp_message((display_get_gui_width() / 2) - (string_width(random_battle_text) / 2), 0, random_battle_text);
	state = scr_battle_attack_sad_state;
}

// Play sound, need to set it up a little differently if different sounds for different enemies
if (animation_hit_frame(1)) {
	scr_audio_play_sound_effect(a_attack_swordswing, false, 80);
}