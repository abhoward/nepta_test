///// @description  Initialize the speaker object
//depth = -y;
//dialog = noone;
//dialog_object = o_dialog; // Could be a cutscene
//dialog_page = 0;
//dialog_state = 0;

//// Set the default portrait
//portrait = s_default_portrait;
//text[0] = "Empty";

//-----------Customise (FOR USER)
playerobject = o_jane;
interact_key = vk_space;
detection_radius = 32;

myVoice			= snd_voice1;
myPortrait		= s_jane_portrait
myFont			= nepta_font;
myName			= "None";

myPortraitTalk		= -1;
myPortraitTalk_x	= -1;
myPortraitTalk_y	= -1;
myPortraitIdle		= -1;
myPortraitIdle_x	= -1;
myPortraitIdle_y	= -1;

//-----------Defaults Setup (LEAVE THIS STUFF)
reset_dialogue_defaults();