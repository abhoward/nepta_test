/// @description Insert description here
// You can write your code in this editor
var dr = detection_radius;
// Don't want to talk to ourselves, or while we're in a cutscene
if ((id.myName != playerobject.myName) && (playerobject.state == scr_move_state) && !instance_exists(o_cutscene_parent)) { 
	if(point_in_rectangle(playerobject.x, playerobject.y, x-dr, y-dr, x+dr, y+dr)){
		if(myTextbox != noone){ 
			if(!instance_exists(myTextbox)) 
			{ 
				myTextbox = noone; 
				exit; 
			}
		}
		//if I haven't already created my textbox, make one:
		else if(o_input.action) {
			if(instance_exists(obj_textbox)) {
				exit;  //exit if a textbox already exists
			} 
			event_user(0);								//if you need variables to update for text
			
			id.state = scr_talking_state;
			id.facing = scr_get_opposite_facing(playerobject.facing); // turn npc to our player
			if (ds_list_find_index(playerobject.talked_to, id.myName) != -1) {
				ds_list_add(playerobject.talked_to, id.myName); // if value is in list, add it
			}
			playerobject.state = scr_talking_state;
			
			//Hand over variables
			create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol, myEmotion, myEmote);
		}
	} else {	//if player moves outside of detection radius
		if(myTextbox != noone) 
		{
			with(myTextbox) instance_destroy();
			myTextbox = noone;
		}
	}
}