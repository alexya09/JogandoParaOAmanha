image_xscale = escala_x * .3;
image_yscale = escala_y * 1.3;

escala_texto_x = .3;
escala_texto_y = 1.3;

acao();

botao_pressionado = true;

// garante que o array exista
if (!is_array(oMiniGame.sequencia)) {
    oMiniGame.sequencia = [];
}

// só adiciona se ainda não atingiu o limite de 5 comandos
if (array_length(oMiniGame.sequencia) < 5) {
    var i = array_length(oMiniGame.sequencia);
    oMiniGame.sequencia[i] = "esquerda";
    oMiniGame.adicionar_seta("esquerda", i);
} else {
    show_debug_message("A sequência já tem 5 comandos!");
}
