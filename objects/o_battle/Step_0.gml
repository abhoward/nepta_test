/// @description  Check for play
if (instance_exists(o_player_battle_unit) && instance_exists(o_enemy_battle_unit)) {
    if (o_player_battle_unit.state == scr_battle_wait_state && o_enemy_battle_unit.state = scr_battle_wait_state) {
        with (o_battle_unit) state = scr_battle_idle_state;
        play = true;
    }
}

