/// @description  Initialize the dialog object
text[0] = "Test,, dialog.";
text[1] = "Test dialog 2.";

text_visible = "";
text_page = 0;
text_count = 0;
cutscene = noone;
width = sprite_width;
spd = .5;
margin = 36;
portrait = s_jane_neutral_portrait;
portrait_x = (display_get_gui_width() - sprite_get_width(portrait))-42;
portrait_y = (display_get_gui_height() - sprite_get_height(portrait))-6;
enabled = true;

// Position
pos_x = display_get_gui_width() / 2 - (width / 2);
pos_y = (display_get_gui_height()-sprite_height)-4;


