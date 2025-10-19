image_xscale = escala_x * 0.3;
image_yscale = escala_y * 1.3;

escala_texto_x = 0.3;
escala_texto_y = 1.3;

acao();
botao_pressionado = true;

for (var i = 0; i < ds_list_size(global.rampas_pos); i++) {
    var info = global.rampas_pos[| i];
    var inst = info[0];       // instância real da rampa
    var objType = info[1];    // tipo do objeto da instância

    var manter = false;

    // verifica se o objeto da instância está no vetor de rampas selecionadas
    for (var j = 0; j < array_length(global.rampas_selecionadas); j++) {
        if (global.rampas_selecionadas[j] == objType) {
            manter = true;
            break;
        }
    }

    // se não estiver, destrói a instância
    if (!manter && instance_exists(inst)) {
        with (inst) instance_destroy();
    }
}



if (instance_exists(oBall)) {
    instance_activate_object(oBall);  
} else {
    var bola = instance_create_layer(235, 76, "Paredes", oBall); // cria na layer correta
    bola.image_xscale = 0.7;  
    bola.image_yscale = 0.7;  
}
