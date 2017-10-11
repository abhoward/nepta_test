///scr_get_input()

// movement input 
up = keyboard_check(ord("W"));
right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
down = keyboard_check(ord("S"));

// menu navigation input
up_pressed = keyboard_check_pressed(ord("W"));
right_pressed = keyboard_check_pressed(ord("D"));
left_pressed = keyboard_check_pressed(ord("A"));
down_pressed = keyboard_check_pressed(ord("S"));

// action and back input
action = keyboard_check_pressed(vk_space);
menu = keyboard_check_pressed(vk_tab);
back = keyboard_check_pressed(vk_escape);