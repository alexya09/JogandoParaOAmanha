//Troca os estados e as animações
switch (state) {
    case STATE_OBJECTS.idle:
        sprite_index = spr_doorclosed;
    break;
    case STATE_OBJECTS.opening:
            sprite_index = spr_dooropening;
    if (image_index >= sprite_get_number(sprite_index) - 1) {
        state = STATE_OBJECTS.opened;
        image_index = 0; 
        }
        break;
    case STATE_OBJECTS.opened:
            sprite_index = spr_dooropened;
        break;
    case STATE_OBJECTS.closing:
            sprite_index = spr_doorclosing;
    if (image_index >= sprite_get_number(sprite_index) - 1) {
        state = STATE_OBJECTS.idle;
        image_index = 0; 
        }
        break;
}

if(distance_to_object(camila_player) <= 4) {
    startDialogue("porta");
}

