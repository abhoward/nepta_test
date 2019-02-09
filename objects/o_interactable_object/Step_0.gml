/// @description Insert description here
// You can write your code in this editor
if (cutscene != noone && !instance_exists(obj_textbox)) {
	show_debug_message("cutscene: " + string(cutscene));
	create_cutscene(cutscene);
	cutscene = noone;
}

if (object == "salvus_bed") {
	switch(o_jane.dialogue_state) {
		case "game_start":
		#region Before entering Salvus main area
			dialog_array =	[
								"You're not tired yet."
							];
				
			speaker = -1;
			effects = -1;
			txt_speed = -1;
			dialog_types = 0;
			next_lines = -1;
			change_vars = -1;
			text_col = -1;
			emotions = -1;
			emotes = -1;
		#endregion
		break;
	
		case "day1_complete":
		#region After talking to everyone in Salvus main area
			dialog_array =	[
								"Would you like to go to sleep?",
								["Yes", "No"]
							];
				
			speaker = -1;
			effects = -1;
			txt_speed = -1;
			dialog_types = [0, 1];
			next_lines = -1;
			change_vars = [-1, [[change_multiple_variables, [id, o_jane, o_jane], ["cutscene", "room_state", "dialogue_state"], ["o_cutscene_jane_salvus_sleep1", "day2", "day2_start"]], [change_variable, id, "cutscene", noone]]];
			text_col = -1;
			emotions = -1;
			emotes = -1;
		#endregion
		break;
	
		case "day2_start":
		#region After 1st time sleeping
			dialog_array =	[
								"You literally just slept. You can't stay in bed all day. Go out and get some sun."
							];
				
			speaker = -1;
			effects = -1;
			txt_speed = -1;
			dialog_types = 0;
			next_lines = -1;
			change_vars = -1;
			text_col = -1;
			emotions = -1;
			emotes = -1;
		#endregion
		break;
	}
}