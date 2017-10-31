///scr_set_player_content_stance()

sad_stance = false;
angry_stance = false;
content_stance = true;
	
state = scr_battle_idle_state;
o_battle.play = true;
show_debug_message("Play called from scr_set_content_stance");
action_meter = max_action_meter / 2;