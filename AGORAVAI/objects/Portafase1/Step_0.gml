//Troca os estados e as animações
switch (state) {
    case STATE_OBJECTS.idle:
        sprite_index = spr_porta1;
    break;
    case STATE_OBJECTS.opening:
            sprite_index = spr_porta1_abrindo;
    if (image_index >= sprite_get_number(sprite_index) - 1) {
        state = STATE_OBJECTS.opened;
        image_index = 0; 
        }
        break;
    case STATE_OBJECTS.opened:
            sprite_index = spr_none;
        break;
    case STATE_OBJECTS.closing:
            sprite_index = spr_porta1_fechando;
    if (image_index >= sprite_get_number(sprite_index) - 1) {
        state = STATE_OBJECTS.idle;
        image_index = 0; 
        }
        break;
    
      
    
}