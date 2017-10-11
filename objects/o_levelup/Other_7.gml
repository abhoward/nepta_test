if (image_speed > 0) {
    image_index = image_number-1;
    image_speed = 0;
    alarm[0] = room_speed*2;
    instance_create(x-48, y, o_levelup_arrow);
    instance_create(x+48, y, o_levelup_arrow);
}

