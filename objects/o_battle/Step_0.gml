/// @description  Check for play
// Checking for various combinations of player's and enemy's stances
if (instance_exists(o_player_battle_unit) && instance_exists(o_enemy_battle_unit)) {
    if (o_player_battle_unit.state == scr_battle_wait_state && o_enemy_battle_unit.state == scr_battle_wait_state) {
        with (o_battle_unit) state = scr_battle_idle_state;
        play = true;
    } else if (o_player_battle_unit.state == scr_battle_wait_sad_state && o_enemy_battle_unit.state == scr_battle_wait_state) {
        o_player_battle_unit.state = scr_battle_idle_sad_state;
		o_enemy_battle_unit.state = scr_battle_idle_state;
        play = true;
	} else if (o_player_battle_unit.state == scr_battle_wait_angry_state && o_enemy_battle_unit.state == scr_battle_wait_state) {
        o_player_battle_unit.state = scr_battle_idle_angry_state;
		o_enemy_battle_unit.state = scr_battle_idle_state;
        play = true;
	} else if (o_player_battle_unit.state == scr_battle_wait_state && o_enemy_battle_unit.state == scr_battle_wait_sad_state) {
        o_player_battle_unit.state = scr_battle_idle_state;
		o_enemy_battle_unit.state = scr_battle_idle_sad_state;
        play = true;
    } else if (o_player_battle_unit.state == scr_battle_wait_sad_state && o_enemy_battle_unit.state == scr_battle_wait_sad_state) {
        with (o_battle_unit) state = scr_battle_idle_sad_state;
        play = true;
	} else if (o_player_battle_unit.state == scr_battle_wait_angry_state && o_enemy_battle_unit.state == scr_battle_wait_sad_state) {
        o_player_battle_unit.state = scr_battle_idle_angry_state;
		o_enemy_battle_unit.state = scr_battle_idle_sad_state;
        play = true;
	} else if (o_player_battle_unit.state == scr_battle_wait_state && o_enemy_battle_unit.state == scr_battle_wait_angry_state) {
        o_player_battle_unit.state = scr_battle_idle_state;
		o_enemy_battle_unit.state = scr_battle_idle_angry_state;
        play = true;
    } else if (o_player_battle_unit.state == scr_battle_wait_sad_state && o_enemy_battle_unit.state == scr_battle_wait_angry_state) {
        o_player_battle_unit.state = scr_battle_idle_sad_state;
		o_enemy_battle_unit.state = scr_battle_idle_angry_state;
        play = true;
	} else if (o_player_battle_unit.state == scr_battle_wait_angry_state && o_enemy_battle_unit.state == scr_battle_wait_angry_state) {
        with (o_battle_unit) state = scr_battle_idle_angry_state;
        play = true;
	}
}