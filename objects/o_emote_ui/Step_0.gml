/// @description  Close the message
if (alarm[0] == 0) {
    // Don't let the input propagate
    if (instance_exists(cutscene)) cutscene.action++;
    instance_destroy();
}