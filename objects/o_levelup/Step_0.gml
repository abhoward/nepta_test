if (image_index == image_number-1) {
    if (chance(.2)) {
        instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), o_shine);
    }
}

