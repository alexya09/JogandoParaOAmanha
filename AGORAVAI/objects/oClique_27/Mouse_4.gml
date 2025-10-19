image_xscale = escala_x * .3;
image_yscale = escala_y * 1.3;

escala_texto_x = .3;
escala_texto_y = 1.3;

acao();

instance_activate_object(oLeft_2);

var obj_escolhido = oLeft_2;

if (array_length(global.rampas_selecionadas) < 10) {
    var ja_adicionado = false;
    for (var i = 0; i < array_length(global.rampas_selecionadas); i++) {
        if (global.rampas_selecionadas[i] == obj_escolhido) {
            ja_adicionado = true;
            break;
        }
    }

    if (!ja_adicionado) {
        array_push(global.rampas_selecionadas, obj_escolhido);
        show_debug_message("Rampa adicionada: " + string(obj_escolhido));
    } else {
        show_debug_message("Rampa já escolhida");
    }
} else {
    show_debug_message("Máximo de 10 rampas atingido");
}