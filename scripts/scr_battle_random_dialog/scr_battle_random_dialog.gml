///scr_random_battle_dialog()
dialog[0] = "Fuck you.";
dialog[1] = "I'M SORRY! A MALEVOLENT\nFORCE IS MAKING ME\nDO THIS!";
dialog[2] = "Spiders are stupid\nand you're stupid.";

array_length = array_length_1d(dialog) - 1;

return dialog[irandom(array_length)];