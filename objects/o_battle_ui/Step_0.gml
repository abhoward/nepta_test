/// @description  Move the ui
var targety;
if (instance_exists(o_player_battle_unit)) {
	if (o_player_battle_unit.state == scr_battle_action_state) {
		targety = 160;
	} else if (o_player_battle_unit.state == scr_battle_angry_state) {
		targety = 160;
	} else if (o_player_battle_unit.state == scr_battle_sad_state) {
		targety = 160;
	} else {
		targety = 224;
	}		
}

y = lerp(y, targety, .1);

if (point_distance(x, y, x, 160) <= 16 && enabled) {
    // Move ui options
    if (o_input.right_pressed && index < 3) {
        index += 1;
        scr_audio_play_sound_effect(a_menu_move, false, 50);
    }
    
    if (o_input.left_pressed && index > 0) {
        index -= 1;
       scr_audio_play_sound_effect(a_menu_move, false, 50);
    }
    
    // Clamp the value
    index = clamp(index, ACTION, STANCE);
    
    if (o_input.action) {
        switch(index) {
            case ACTION:
                enabled = false;
                var action_list = instance_create_depth(bbox_left+13, targety-sprite_height/2, 0, o_action_list_ui);
                action_list.y -= action_list.height+4;
                action_list.parent = id;
                scr_audio_play_sound_effect(a_menu_move, false, 50);
                break;
                
            case ITEM:
                enabled = false;
                var item_list = instance_create_depth(bbox_left+13, targety-sprite_height/2, 0, o_item_list_ui);
                item_list.y -= item_list.height+4;
                item_list.parent = id;
                scr_audio_play_sound_effect(a_menu_move, false, 50);
            break;
            
            case RUN:
                o_player_battle_unit.state = scr_battle_wait_state;
                var transition = instance_create_depth(0, 0, 0, o_fade_transition);
                transition.next_room = o_game.last_room;
                depth = 100;
                scr_audio_play_sound_effect(a_menu_move, false, 50);
                break;
				
			case STANCE:
                enabled = false;
                var stance_list = instance_create_depth(bbox_left+13, targety-sprite_height/2, 0, o_stance_list_ui);
                stance_list.y -= stance_list.height+4;
                stance_list.parent = id;
                scr_audio_play_sound_effect(a_menu_move, false, 50);
                break;
        }
    }
}

