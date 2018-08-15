reset_dialogue_defaults();

if (ds_list_size(o_jane.talked_to) >= 4) {
	global.dialogue_variable = 1;
}

switch(global.dialogue_variable) {
	case 0:
	#region Before entering Salvus
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
	
	case 1:
	#region After entering Salvus
		dialog_array =	[
							"Would you like to go to sleep?",
							["Yes", "No"]
						];
				
		speaker = -1;
		effects = -1;
		txt_speed = -1;
		dialog_types = [0, 1];
		next_lines = -1;
		change_vars = [-1, [[change_variable, id, "cutscene", "o_cutscene_jane_salvus_sleep1"], [change_variable, id, "cutscene", noone]]];
		text_col = -1;
		emotions = -1;
		emotes = -1;
	#endregion
	
	break;
}

facing = LEFT;