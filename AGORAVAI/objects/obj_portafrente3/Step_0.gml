event_inherited();
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

var score_to_open = 4;

if (state == STATE_OBJECTS.idle && global.pontuacao >= score_to_open){
    state = STATE_OBJECTS.opening;
}
