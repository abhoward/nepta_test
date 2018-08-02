///scr_wait(seconds, action)
var seconds = argument0;
var inc_action = argument1;

var steps = seconds_to_steps(seconds);

// Set the alarm
if (alarm[0] == -1) {
	alarm[0] = steps;
}

// End the wait period
if (alarm[0] == 0) {
	if (inc_action) {
		action++;
	}
	return false;
}


return true;