image_xscale = escala_x * .3;
image_yscale = escala_y * 1.3;

escala_texto_x = .3;
escala_texto_y = 1.3;

botao_pressionado = true;

// Zera a sequência corretamente
oMiniGame.sequencia = [];  // cria um novo array vazio
oMiniGame.setas_pressionadas = [];

// Reseta o estado da execução
oMiniGame.executando = false;
oMiniGame.index_sequencia = 0;
oMiniGame.destino_x = oMiniGame.x;
oMiniGame.destino_y = oMiniGame.y;

show_debug_message("Sequência apagada!");
