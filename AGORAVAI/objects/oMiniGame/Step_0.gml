show_debug_message(sequencia);

var botao_atual = oConfirma.botao_pressionado;

if (!executando && botao_atual && !botao_anterior) {
    executando      = true;
    index_sequencia = 0;
    oConfirma.botao_pressionado = false;
}
botao_anterior = botao_atual;

if (executando) {

    if (index_sequencia < array_length(oMiniGame.sequencia)) {

        var direcao = oMiniGame.sequencia[index_sequencia];
		
        if (x == destino_x && y == destino_y) {
            show_debug_message(direcao);

            switch (direcao) {
                case "cima":
                    destino_y    = y - 32;
                    sprite_index = spr_camila_walk_up;
                    break;

                case "baixo":
                    destino_y    = y + 32;
                    sprite_index = spr_camila_walk_down;
                    break;

                case "esquerda":
                    destino_x    = x - 32;
                    sprite_index = spr_camila_walk_left;
                    break;

                case "direita":
                    destino_x    = x + 32;
                    sprite_index = spr_camila_walk_right;
                    break;
                
				case "rotacao":
				    destino_x = x;
				    destino_y = y;

				    switch (sprite_index) {
				        case spr_camila_walk_up:    sprite_index = spr_camila_walk_right; break;
				        case spr_camila_walk_right: sprite_index = spr_camila_walk_down;  break;
				        case spr_camila_walk_down:  sprite_index = spr_camila_walk_left;  break;
				        case spr_camila_walk_left:  sprite_index = spr_camila_walk_up;    break;
				    }
				    break;
                
				case "loop":
                    if (index_sequencia >= 2) {
                        var d1 = oMiniGame.sequencia[index_sequencia - 2];
                        var d2 = oMiniGame.sequencia[index_sequencia - 1];
						
					
                        array_insert(oMiniGame.sequencia, index_sequencia + 1, d1);
                        array_insert(oMiniGame.sequencia, index_sequencia + 2, d2);
                    }

                    destino_x = x;
                    destino_y = y;
                    break;
            }
        }

        if (x < destino_x) x = min(x + velocidade, destino_x);
        if (x > destino_x) x = max(x - velocidade, destino_x);
        if (y < destino_y) y = min(y + velocidade, destino_y);
        if (y > destino_y) y = max(y - velocidade, destino_y);
		
        if (x == destino_x && y == destino_y) {
            index_sequencia += 1;

            if (index_sequencia >= array_length(oMiniGame.sequencia)) {
                executando   = false;
                sprite_index = spr_camila_idle_right;
            }
        }
    }
}
