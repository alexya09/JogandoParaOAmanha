startClass("turingTumble");

// Só executa este código se ainda não tiver sido executado
if (!global.listas_iniciadas) 
{
    show_debug_message("PRIMEIRA EXECUÇÃO: Inicializando listas de rampas...");

    global.rampas_selecionadas = [];

    if (variable_global_exists("rampas_pos")) {
        if (ds_exists(global.rampas_pos, ds_type_list)) {
            ds_list_destroy(global.rampas_pos);
        }
    }
    
    global.rampas_pos = ds_list_create();

    with (oLeft) {
        var info = [object_index, x, y];
        ds_list_add(global.rampas_pos, info);
    }
    instance_destroy(oLeft);

    for (var i = 1; i <= 56; i++) {
        var objIndex = asset_get_index("oLeft_" + string(i));
        
        if (objIndex != -1) {
            
            // Adicionamos esta verificação para ter certeza de que a instância existe antes de tentar acessá-la
            if (instance_exists(objIndex)) { 
                with (objIndex) {
                    var info = [object_index, x, y];
                    ds_list_add(global.rampas_pos, info);
                    
                    if (object_index == asset_get_index("oLeft_36")) {
                         show_debug_message("DEBUG 36: ADICIONADO À LISTA COM SUCESSO.");
                    }
                }
                
                instance_destroy(objIndex); // Destrói todas as instâncias desse tipo
            }
            else
            {
                // Se não existe, apenas informa (não precisa do seu teste 'i == 36' agora)
                if (i == 36) {
                    show_debug_message("DEBUG 36: Instância não encontrada no loop.");
                }
            }
        }
    }

    //global.rampas_corretas = [oLeft, oLeft_1, oLeft_10, oLeft_11, oLeft_12, oLeft_13, oLeft_14, oLeft_15, oLeft_16, oLeft_51];
    global.rampas_corretas = [oLeft_10, oLeft_11, oLeft_12, oLeft_13, oLeft_14, oLeft_15];
    // Configura a flag para que este código não rode novamente
    global.listas_iniciadas = true; 
    
    show_debug_message("--- INICIALIZAÇÃO DE RAMPAS CONCLUÍDA ---");

}
else
{
    // Isso vai aparecer nas execuções 2, 3, 4 etc. para confirmar que o bug foi evitado
    show_debug_message("Listas já inicializadas, pulando."); 
}