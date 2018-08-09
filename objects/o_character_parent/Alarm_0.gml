/// @description Calculating our various wandering variables

// Choose if we're moving on the x axis or y axis
choosex = choose(0, random_range(-xmax, xmax));

if (choosex == 0) {
	choosey = random_range(-ymax, ymax);
} else {
	choosey = 0;
}

targetx = max(sprite_height, x + choosex);
targety = max(sprite_width, y + choosey);