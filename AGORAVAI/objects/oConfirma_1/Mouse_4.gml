
image_xscale = escala_x * 0.3;
image_yscale = escala_y * 1.3;
escala_texto_x = 0.3;
escala_texto_y = 1.3;

if (array_length(global.rampas_selecionadas) != array_length(global.rampas_corretas)) {
    show_debug_message("ERRO: Número incorreto de rampas.");
	startDialogue("erradofase3");
    exit; 
}

var todas_corretas = true; 

for (var i = 0; i < array_length(global.rampas_selecionadas); i++) {
    
    var rampa_colocada_id = global.rampas_selecionadas[i];
    
    var tipo_da_rampa_colocada = object_get_name(rampa_colocada_id.object_index); 
    
    var encontrada_na_lista_correta = false;

    for (var j = 0; j < array_length(global.rampas_corretas); j++) {
        
        var tipo_da_rampa_correta = object_get_name(global.rampas_corretas[j]);

        if (tipo_da_rampa_colocada == tipo_da_rampa_correta) {
            encontrada_na_lista_correta = true;
            break;
        }
    }
    
    if (!encontrada_na_lista_correta) {
        todas_corretas = false;
        break;
    }
}

if (todas_corretas) {
    show_debug_message("CORRETO! Liberando a bola.");
    if (instance_exists(oBall)) {
        instance_activate_object(oBall);  
    } else {
        var bola = instance_create_layer(235, 76, "Paredes", oBall); 
        bola.image_xscale = 0.7;  
        bola.image_yscale = 0.7;  
    }
    
    
} else {
    show_debug_message("ERRADO! Tente novamente.");
	startDialogue("erradofase3");
  
    for (var i = 0; i < array_length(global.rampas_selecionadas); i++) {
        if (instance_exists(global.rampas_selecionadas[i])) {
            instance_destroy(global.rampas_selecionadas[i]);
        }
    }
    global.rampas_selecionadas = [];
}