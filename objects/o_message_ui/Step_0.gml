/// @description  Close the message
if (o_input.action || o_input.back || alarm[0] == 0) {
    // Don't let the input propagate
    o_input.action = false;
    o_input.back = false;
    if (instance_exists(cutscene)) cutscene.action++;
    instance_destroy();
}

