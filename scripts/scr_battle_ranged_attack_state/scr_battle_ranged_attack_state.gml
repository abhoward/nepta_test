///scr_battle_ranged_attack_state(xoffset, yoffset, effect, effect_frame)
var xoffset = argument0;
var yoffset = argument1;
var effect = argument2;
var effect_frame = argument3;

// Set the sprite
scr_battle_set_sprite(RANGED, 0);

var targetx = xstart + BATTLE_SPACE * image_xscale;
var sprite_data = obj_data.sprites[? sprite_get_name(sprite[RANGED])];

if (animation_hit_frame(sprite_data[? "hit frame"])) {
	// Set the view state
	obj_battle_view.target[? "x"] = targetx - 32 * image_xscale;
	obj_battle_view.state = scr_battle_view_focus_state;
}

// Hit
if(animation_hit_frame(effect_frame)) {
	var effect = instance_create_depth(x + xoffset, y + yoffset, -100, effect);
	effect.image_xscale = image_xscale;
	effect.direction = point_direction(0, 0, image_xscale, 0);
	effect.creator = id;
	if (object_index = obj_player_battle_unit) {
		effect.target = obj_enemy_battle_unit;
	} else {
		effect.target = obj_player_battle_unit;
	}
}

// Return to the wait state
if (animation_end()) {
	state = scr_battle_wait_state;
}