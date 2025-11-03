//startClass("turingTumble");

// 1. Inicializa as listas globais
global.rampas_selecionadas = [];

// --- Bloco Corrigido (Mais Seguro) ---
// 1. Checa se a variável global existe
if (variable_global_exists("rampas_pos")) {
    
    // 2. Checa se o valor dentro dela é um número válido (>= 0)
    // IDs de listas são sempre números reais (inteiros) começando em 0.
    if (is_real(global.rampas_pos) && global.rampas_pos >= 0) {
        
        // 3. Só agora é seguro checar se a lista apontada pelo ID existe
        if (ds_list_exists(global.rampas_pos)) {
            // Se existir, destrói a lista antiga para evitar vazamento de memória
            ds_list_destroy(global.rampas_pos);
        }
    }
}
// 4. Finalmente, cria uma lista nova e limpa para o nível atual.
global.rampas_pos = ds_list_create();
// --- Fim do Bloco Corrigido ---


// 2. Salva as posições de 'oLeft' e DEPOIS destrói
with (oLeft) {
    // Salva o TIPO de objeto e sua posição (x, y)
    var info = [object_index, x, y];
    ds_list_add(global.rampas_pos, info);
}
// Agora que todos os 'oLeft' foram salvos, destruímos todos
instance_destroy(oLeft);


// 3. Faz o mesmo para todos os 'oLeft_i'
// (O loop de desativação ia até 56, então mantive esse número)
for (var i = 1; i <= 56; i++) {
    var objIndex = asset_get_index("oLeft_" + string(i));

    // Se esse tipo de objeto existe (ex: "oLeft_1", "oLeft_2", ...)
    if (objIndex != -1) {
        
        // Primeiro, salva a info de todas as instâncias desse tipo
        with (objIndex) {
            var info = [object_index, x, y];
            ds_list_add(global.rampas_pos, info);
        }
        
        // DEPOIS que salvou, destrói todas as instâncias desse tipo
        instance_destroy(objIndex);
    }
}

// 4. Sua lista de rampas corretas (já estava OK)
global.rampas_corretas = [oLeft, oLeft_1, oLeft_10, oLeft_11, oLeft_12, oLeft_13, oLeft_14, oLeft_15, oLeft_16, oLeft_51];