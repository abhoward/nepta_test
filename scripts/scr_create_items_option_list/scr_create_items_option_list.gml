///scr_create_items_option_list()
var options = ds_list_create();

// Loop through the items
var items_list = obj_player_stats.items;
for (var i = 0; i < ds_list_size(items_list); i++) {
	var items = items_list[| i];
	var item_number = obj_player_stats.item_number[| i];
	var option_text = "x" + string(item_number) + " " + items[? "name"];
	if (item_number > 1) option_text += "s";
	
	// Attempt to prevent the text from going past the UI frame
	if (string_length(option_text) > 13) {
		option_text = string_copy(option_text, 0, 10);
		option_text += "..."; // i.e. x5 Super M...
	}
	
	options[| i] = scr_create_option(option_text, scr_item_option_use_ui);
}
scr_mark_option_list(options);
return options;