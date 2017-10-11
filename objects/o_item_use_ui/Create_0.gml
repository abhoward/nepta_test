event_inherited();
width = 56;
height = 52;

// Create the options list
options = ds_list_create();
var option_index = 0;
options[| option_index++] = create_option("Use", item_option_use);
options[| option_index++] = create_option("Info", item_option_info);
options[| option_index++] = create_option("Drop", item_option_drop);
mark_option_list(options);

