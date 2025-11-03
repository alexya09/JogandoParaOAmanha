// --- 1. Feedback visual do botão (seu código) ---
image_xscale = escala_x * .3;
image_yscale = escala_y * 1.3;

escala_texto_x = .3;
escala_texto_y = 1.3;

acao(); // Seu script de ação (tocar som, etc.)


// --- 2. Lógica de CRIAÇÃO da Rampa (Corrigida) ---

// Define qual o TIPO de rampa que este botão específico deve criar
var rampa_para_criar = oLeft_17;

// Verifica se o NÚMERO TOTAL de rampas já criadas é menor que 10
if (array_length(global.rampas_selecionadas) < 10) {
    
    // --- NOVO: BUSCAR A POSIÇÃO ORIGINAL ---
    var original_x = x; // Posição do botão (como fallback)
    var original_y = y; // Posição do botão (como fallback)
    var encontrado = false;

    // Procura na lista global que você criou no Room Start
    var list_size = ds_list_size(global.rampas_pos);
    for (var i = 0; i < list_size; i++) {
        
        var info = global.rampas_pos[| i]; // Pega o array [tipo, x, y]
        var obj_tipo = info[0]; // O tipo (ex: oLeft_1, oLeft_17)
        
        // Se o tipo na lista for o que este botão quer criar...
        if (obj_tipo == rampa_para_criar) {
            original_x = info[1]; // ...pega o X original!
            original_y = info[2]; // ...pega o Y original!
            encontrado = true;
            break; // Achamos, não precisa mais procurar
        }
    }

    if (!encontrado) {
        show_debug_message("AVISO: Posição original não encontrada para " + object_get_name(rampa_para_criar));
        // Se não encontrar, ele vai usar o x,y do botão como emergência
    }
    // --- FIM DA BUSCA ---
    
    
    // CRIA a rampa na posição ORIGINAL que encontramos
    var nova_rampa_id = instance_create_layer(256, 93, "Instances", rampa_para_criar);
    
    // Define a escala (como você já tinha feito)
    nova_rampa_id.image_xscale = 0.7;
    nova_rampa_id.image_yscale = 0.8;
	nova_rampa_id.phy_rotation = 18.08327;

    
    // Adiciona o ID da rampa à lista
    array_push(global.rampas_selecionadas, nova_rampa_id);
    
    show_debug_message("Rampa CRIADA! ID: " + string(nova_rampa_id) + ". Total: " + string(array_length(global.rampas_selecionadas)));
    
} else {
    // Se a lista já tem 10 rampas, avisa o jogador
    show_debug_message("Máximo de 10 rampas atingido. Não é possível criar mais.");
}