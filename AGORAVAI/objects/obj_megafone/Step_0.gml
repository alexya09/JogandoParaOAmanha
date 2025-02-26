    show_debug_message("Step: State is " + string(state));
switch (state){
    case STATE_OBJECTS.idle:
        sprite_index = megafone_inativo;
    break;
    case STATE_OBJECTS.opened:
        sprite_index = megafone_ativo;
    break;
    
}