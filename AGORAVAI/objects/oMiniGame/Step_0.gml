show_debug_message(sequencia);

var botao_atual = oConfirma.botao_pressionado;

if (!executando && botao_atual && !botao_anterior) {
    executando = true;
    index_sequencia = 0;
}

botao_anterior = botao_atual;

if (executando) {
    if (index_sequencia < 5) {
        var direcao = oMiniGame.sequencia[index_sequencia];

        if (x == destino_x && y == destino_y) {
            show_debug_message(direcao);

            switch (direcao) {
                case "cima":
                    destino_y = y - 32;
                    sprite_index = spr_camila_walk_up;
                    break;
                case "baixo":
                    destino_y = y + 32;
                    sprite_index = spr_camila_walk_down;
                    break;
                case "esquerda":
                    destino_x = x - 32;
                    sprite_index = spr_camila_walk_left;
                    break;
                case "direita":
                    destino_x = x + 32;
                    sprite_index = spr_camila_walk_right;
                    break;
            }
        }

        if (x < destino_x) x = min(x + velocidade, destino_x);
        if (x > destino_x) x = max(x - velocidade, destino_x);
        if (y < destino_y) y = min(y + velocidade, destino_y);
        if (y > destino_y) y = max(y - velocidade, destino_y);

        if (x == destino_x && y == destino_y) {
            index_sequencia += 1;
            if (index_sequencia >= 5) {
                executando = false;
                sprite_index = spr_camila_idle_right;
            }
        }
    }
}
