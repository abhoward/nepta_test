if(instance_number(obj_textevent)>1 or instance_number(obj_textbox)>0) { 
	instance_destroy(); 
	exit; 
}

//-----------Customise (FOR USER)
cutscene		= noone;
is_cutscene		= false;

myVoice			= snd_voice2;
myTextCol		= c_white;
myPortrait		= -1;
myFont			= nepta_font;
myName			= "None";

//-----------Setup (LEAVE THIS STUFF)
myTextbox   = noone;
reset_dialogue_defaults();