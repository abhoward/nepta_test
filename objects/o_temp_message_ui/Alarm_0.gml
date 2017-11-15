/// @description  Used for temporary messages
o_input.action = false;
o_input.back = false;
if (instance_exists(cutscene)) cutscene.action++;
instance_destroy();