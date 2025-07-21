// Step do obj_miniGame

// DEBUG: mostra estado atual
show_debug_message("Sequência: " + string(oMiniGame.sequencia));
show_debug_message("Setas pressionadas: " + string(oMiniGame.setas_pressionadas));

// Lê estado do botão confirmar
var botao_atual = oConfirma.botao_pressionado;

// Se ainda não está executando e o botão foi pressionado agora, começa execução
if (!executando && botao_atual && !botao_anterior) {
    if (array_length(oMiniGame.sequencia) > 0) {
        executando = true;
        index_sequencia = 0;
        oConfirma.botao_pressionado = false;
    } else {
        show_debug_message("Sequência está vazia!");
    }
}

// Atualiza estado do botão para próxima verificação
botao_anterior = botao_atual;

// Se está executando a sequência
if (executando) {
    // Ainda existem comandos para executar?
    if (index_sequencia < array_length(oMiniGame.sequencia)) {

        var direcao = oMiniGame.sequencia[index_sequencia];

        // Quando chega no destino atual, decide próximo movimento
        if (x == destino_x && y == destino_y) {
            show_debug_message("Executando: " + direcao);

            switch (direcao) {
                case "cima":
                    destino_y = y - 24;
                    sprite_index = spr_camila_walk_up;
                    break;

                case "baixo":
                    destino_y = y + 24;
                    sprite_index = spr_camila_walk_down;
                    break;

                case "esquerda":
                    destino_x = x - 24;
                    sprite_index = spr_camila_walk_left;
                    break;

                case "direita":
                    destino_x = x + 24;
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
                    destino_x = x;
                    destino_y = y;

                    if (index_sequencia >= 2) {
                        var d1 = oMiniGame.sequencia[index_sequencia - 2];
                        var d2 = oMiniGame.sequencia[index_sequencia - 1];

                        array_insert(oMiniGame.sequencia, index_sequencia + 1, d1);
                        array_insert(oMiniGame.sequencia, index_sequencia + 2, d2);
                    }
                    break;

                default:
                    show_debug_message("Comando inválido: " + string(direcao));
                    break;
            }
        }

        // Movimento suave até o destino
        if (x < destino_x) x = min(x + velocidade, destino_x);
        if (x > destino_x) x = max(x - velocidade, destino_x);
        if (y < destino_y) y = min(y + velocidade, destino_y);
        if (y > destino_y) y = max(y - velocidade, destino_y);

        // Chegou ao destino do passo atual? Avança para o próximo comando
        if (x == destino_x && y == destino_y) {
            index_sequencia += 1;

            if (index_sequencia >= array_length(oMiniGame.sequencia)) {
                executando = false;
                sprite_index = spr_camila_idle_right;
                show_debug_message("Fim da sequência!");
            }
        }

    } else {
        // Não há mais comandos para executar
        executando = false;
        sprite_index = spr_camila_idle_right;
        show_debug_message("Nenhum comando restante!");
    }
}
