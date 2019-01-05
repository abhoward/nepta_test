/// @description
event_inherited();

if (keyboard_check_pressed(vk_escape)) {
	instance_destroy();
}

switch (action) {
	case 0: scr_character_face_direction([o_art], [LEFT], 0); break;
	case 1: scr_character_face_direction([o_phae], [RIGHT], 0); break;
	case 2: scr_wait(1, true); break;
	case 3: create_dialogue(["Ah! Here she is. Everyone, meet Jane."], o_art, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 4: create_dialogue(["Hello! It's so great to finally meet you!"], o_rose, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 5: create_dialogue(["Oh oh oh! Look at me! Notice me!"], o_phae, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 6: create_dialogue(["Hm. She's a bit shorter than I was hoping for..."], o_horace, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 7: create_dialogue(["Shut it Horace. She'll do just fine."], o_gwen, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 8: create_dialogue(["Excuse me?"], o_jane, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 9: create_dialogue(["Okay okay, give her some space. Jane, these are the members of Salvus' governing board.", "From right to left we've got Horace, Phae, Rose, and Gwen."], [o_art, o_art], -1, -1, [0, 0], -1, -1, -1, [PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL], -1); break;
	case 10: create_dialogue(["Um. Hi."], o_jane, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1); break;
	case 11: create_dialogue(["Okay Jane, it's time for some real talk."], o_art, -1, -1, 0, -1, -1, -1, [PORTRAIT_NEUTRAL], -1);
	case 12: create_dialogue(["Real talk? The hell is that?"], o_jane, -1, -1, 0, -1, -1, -1, [PORTRAIT_ANNOYED], -1);
	case 13: create_dialogue(["Exactly what it sounds like.", "Jane, Salvus needs you.", "We need you.", "I NEED YOU.", "sigh Goddammit Horace..."], [o_art, o_rose, o_phae, o_horace, o_gwen], [0, 0, 0, 0, [1, 7, 5, 0]], -1, [0, 0, 0, 0, 0], -1, -1, -1, [PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL], -1);
	case 14: create_dialogue(["Erm..."], o_jane, -1, -1, -1, -1, -1, -1, [PORTRAIT_NEUTRAL], [11]);
	case 15: create_dialogue(
		[
			"Please Jane, let me explain.", 
			"You see, once upon a time, Salvus used to be a thriving city, populated with numerous Valkyries.", 
			"However, a tragedy befell upon us 5 years ago, and ever since we haven't gotten any Valkyries.",
			"But now you see why we're so excited, right?! You're arrival is a sign of great things to come!",
			"With your help we can make this city great again and attract even more Valkyries!"
		], [o_art, o_art, o_art, o_art, o_art], -1, -1, -1, -1, -1, -1, [PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL], -1); break;
	case 16: create_dialogue(["Okay yeah that's great and all, but what exactly am I supposed to do?", "In case you forgot, I have no memory of anything! I'm basically a potato. You might as well call me Jane the Potato."], [o_jane, o_jane], -1, -1, [0, 0], -1, -1, -1, [PORTRAIT_ANNOYED, PORTRAIT_SAD], -1); break;
	case 17: create_dialogue(
		[
			"I see Art hasn't informed you of the Valkyries' Might.", 
			"...what?", 
			"The Valkyries' Might! It's the whole reason why Valkyries are so special! They possess enormously raw talent in some way, shape, or form.", 
			"It could be blacksmithing, or agility, or-", 
			"It could be super strength! That'd be prety hot.",
			"sigh I'm sure it'll be something much more practical, like photographic memory, or eyes that shoot laser beams.",
			"Wait...so you're saying I basically have super powers?",
			"Sure, that's one way to put it.",
			"That's...so...BADASS!",
			"ahem",
			"So anyway...how do I figure out what my, er, Might is?",
			"Funny you mention that. We've constructed some tests to determine what your Might is. Is that something you're interested in?",
			"Hell yeah! I mean, uh, yeah whatever, that'd be cool.",
			"Great! I'll give you the day to mull over everything and explore the town, and tomorrow we'll start bright and early.",
			"You can use the house behind you to sleep in and stuff.",
			"Alright guys, let's get out of her hair.",
			"Indeed. Jane, I'll be waiting outside of your room tomorrow morning. Until then, enjoy Salvus!"
		], [o_rose, o_jane, o_phae, o_phae, o_horace, o_gwen, o_jane, o_rose, o_jane, o_jane, o_jane, o_art, o_jane, o_art, o_phae, o_gwen, o_art], 
		[
			-1, -1, -1, -1, -1, [1, 7, 5, 0], -1, -1, [15, 3], [1, 7], -1, -1, -1, -1, -1, -1, -1
		],
		[
			0, 0, 0, 0, 0, 0, 0, 0, [7, 0.2, 10, 1, 12, 0.2, 15, 2], 0, 0, 0, 0, 0, 0, 0, 0
		], -1, -1, -1, -1, 
		[
			PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL, 
			PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL, PORTRAIT_HAPPY, PORTRAIT_EMBARRASSED,
			PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL,
			PORTRAIT_NEUTRAL, PORTRAIT_NEUTRAL
		], -1); break;
	//case 18: scr_character_face_direction([o_art, o_phae, o_horace, o_gwen, o_rose], [LEFT, LEFT, LEFT, LEFT, LEFT], [0.25, 0.25, 0.25, 0.25, 0.25]); break;
	case 18: scr_character_move_to([o_art, o_phae, o_horace, o_gwen, o_rose], [-700, -500, -500, -500, -500], [0, 0, 0, 0, 0], [true, true, true, true, true], [4, 4, 4, 4, 4], false, 0); break;
	case 19: scr_cutscene_destroy_object([o_art, o_phae, o_horace, o_gwen, o_rose], [0.025, 0.025, 0.025, 0.025, 0.025], [0, 0, 0, 0, 0]); break;
	case 20: instance_destroy(); break;
	default: instance_destroy();
}