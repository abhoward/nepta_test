//scr_battle_return_angry_state()
var targetx = xstart;
var spd = 12;

scr_battle_set_sprite(RETURN_ANGRY, 0);

// Calculate the image speed
var frames = scr_get_frames(targetx, xstart + BATTLE_SPACE * image_xscale, spd);
image_speed = scr_get_image_speed_from_frames(frames, image_number);

x = approach(x, targetx, spd);

if (x == targetx) {
	o_battle.play = true;
	show_debug_message("Play called from scr_battle_return_angry_state");
	state = scr_battle_wait_angry_state;
}