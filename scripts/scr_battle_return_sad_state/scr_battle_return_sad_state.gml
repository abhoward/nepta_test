//scr_battle_return_sad_state()
var targetx = xstart;
var spd = 12;

scr_battle_set_sprite(RETURN_SAD, 0);

// Calculate the image speed
var frames = scr_get_frames(targetx, xstart + BATTLE_SPACE * image_xscale, spd);
image_speed = scr_get_image_speed_from_frames(frames, image_number);

x = approach(x, targetx, spd);

if (x == targetx) {
	state = scr_battle_wait_sad_state;
	o_battle.play = true;
	show_debug_message("Play called from scr_battle_return_sad_state");
}