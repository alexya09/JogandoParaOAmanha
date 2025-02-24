show_debug_message("Left Pressed: State is " + string(state));
if (state = STATE_OBJECTS.idle){
    state = STATE_OBJECTS.opened;
}
else {
    state = STATE_OBJECTS.idle;
}
//aqui pra alterar ta como clique, da pra mudar isso depois;