escala_x = image_xscale;
escala_y = image_yscale;

escala_texto_x = 1;
escala_texto_y = 1;

botao_pressionado = false;

acao = function()
{
	
}

localadc = 0;

if (!instance_exists(oMiniGame)) {
    instance_create_layer(x, y, "Instances", oMiniGame);
}


function adicionar_seta(direcao, localadc) {
    var nova_seta = {
        direcao: direcao,
        posicao: localadc
    };

    for (var i = 0; i < array_length(oMiniGame.setas_pressionadas); i++) {
        if (oMiniGame.setas_pressionadas[i].posicao == localadc) {
            array_delete(oMiniGame.setas_pressionadas, i, 1);
            break;
        }
    }

    array_push(oMiniGame.setas_pressionadas, nova_seta);
}
