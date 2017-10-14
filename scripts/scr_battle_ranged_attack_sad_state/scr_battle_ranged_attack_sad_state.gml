///scr_battle_ranged_attack_sad_state(xoffset, yoffset, effect, effect_frame)
var xoffset = argument0;
var yoffset = argument1;
var effect = argument2;
var effect_frame = argument3;

// Set the sprite
scr_battle_set_sprite(RANGED_SAD, 0);

var targetx = xstart + BATTLE_SPACE * image_xscale;
var sprite_data = o_data.sprites[? sprite_get_name(sprite[RANGED_SAD])];

if (animation_hit_frame(sprite_data[? "hit frame"])) {
	// Set the view state
	o_battle_view.target[? "x"] = targetx - 32 * image_xscale;
	o_battle_view.state = scr_battle_view_focus_state;
}

// Hit
if(animation_hit_frame(effect_frame)) {
	var effect = instance_create_depth(x + xoffset, y + yoffset, -100, effect);
	effect.image_xscale = image_xscale;
	effect.direction = point_direction(0, 0, image_xscale, 0);
	effect.creator = id;
	if (object_index = o_player_battle_unit) {
		effect.target = o_enemy_battle_unit;
	} else {
		effect.target = o_player_battle_unit;
	}
}

// Return to the wait state
if (animation_end()) {
	state = scr_battle_wait_sad_state;
}