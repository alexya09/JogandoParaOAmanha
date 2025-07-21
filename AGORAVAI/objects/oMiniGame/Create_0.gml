sequencia = [];
setas_pressionadas = [];

index_sequencia = 0;
executando = false;
velocidade = 4;
destino_x = x;
destino_y = y;
executando = false;
botao_anterior = false;


function adicionar_seta(direcao, localadc) {
    var nova_seta = {
        direcao: direcao,
        posicao: localadc
    };

    for (var i = 0; i < array_length(setas_pressionadas); i++) {
        if (setas_pressionadas[i].posicao == localadc) {
            array_delete(setas_pressionadas, i, 1);
            break;
        }
    }

    array_push(setas_pressionadas, nova_seta);
}

