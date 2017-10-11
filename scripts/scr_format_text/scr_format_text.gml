///scr_format_text(text_array, width, font)
var text = argument0;
var width = argument1;
var font = argument2;

// Set the font
draw_set_font(font);

// Get number of pages
var array_size = array_length_1d(text);
var last_space = 0;

// Loop through the pages
for (var i = 0; i < array_size; i++) {
	// Set count to 0
	var count = 0;
	
	// Loop through the characters
	var char = string_char_at(text[@ i], count);

	while (char != "") {
		var str = string_copy(text[i], 1, count);
		var str_width = string_width(str);
		
		// Update the last space
		if (char == " ") {
			last_space = count;
		}
		
		// Check the width
		if (str_width > width) {
			// Remove a space
			text[@ i] = string_delete(text[i], last_space, 1);
			
			text[@ i] = string_insert("\n", text[i], last_space);
		}
		
		// Increment count
		count++;
		char = string_char_at(text[@ i], count);
	}
}

return text;