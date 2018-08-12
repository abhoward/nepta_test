/// @description Initialize all dialogue options
//---You can update variables here!---//
reset_dialogue_defaults();

switch(choice_variable){
	case -1:
	#region First Salvus Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "Oh shit, uh, hi. So...*ahem* you doing anything later?";
		mySpeaker[i]	= id;
		
		i++;
		myText[i]		= "Not with you, I am."
		mySpeaker[i]	= o_jane;
		myEmotion[i]	= PORTRAIT_ANGRY;
		
		i++;
		myText[i]		= "I know..."
		mySpeaker[i]	= id;
		myEmote[i]		= 9;
		myScripts[i]	= [change_variable, id, "choice_variable", "salvus_done"];
	#endregion
	break;
	
	case "salvus_done":
	#region After First Salvus Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "I don't need it...I don't need it...I definitely don't need it.";
		mySpeaker[i]	= id;
		myEffects[i]	= [1, 1];
	#endregion
	break;
}