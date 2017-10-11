/// @description  Draw the character
draw_self();
if (hitflash) {
    gpu_set_blendmode(bm_add);
    gpu_set_fog(true, c_red, 0, 0);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, .75*image_alpha);
    gpu_set_fog(true, c_yellow, 0, 0);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, .25*image_alpha);
    gpu_set_fog(false, c_white, 0, 0);
    gpu_set_blendmode(bm_normal);
}

if (stats_object.defend) {
    var input = current_time/(room_speed*2);
    if (object_index == o_enemy_battle_unit) {
        draw_sprite_ext(s_shield, 0, bbox_left, y-24+cos(input/4)*2, image_xscale, 1, 0, c_white, 1);
    } else {
        draw_sprite_ext(s_shield, 0, bbox_right, y-24+cos(input/4+pi)*2, image_xscale, 1, 0, c_white, 1);
    }
}

