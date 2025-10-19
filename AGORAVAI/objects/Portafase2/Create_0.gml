state = STATE_OBJECTS.idle;

spr_doorclosed = spr_porta2;
spr_dooropening = spr_porta1_abrindo;
spr_doorclosing = spr_porta1_fechando;
spr_dooropened = spr_none;

dialogo = false;

y_inicial = y;          // posição inicial
altura_descida = 64;    // quanto vai descer (ajuste conforme seu sprite)
velocidade_descida = 6; // pixels por step, aumentei para ficar mais rápido
descendo = false;       // controle extra
