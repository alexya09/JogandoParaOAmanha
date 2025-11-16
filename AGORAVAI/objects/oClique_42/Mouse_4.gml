image_xscale = escala_x * .3;
image_yscale = escala_y * 1.3;

escala_texto_x = .3;
escala_texto_y = 1.3;

//acao(); 

var rampa_para_criar = oLeft_45;

if (array_length(global.rampas_selecionadas) < 10) {
    
  
    var original_x = x; 
    var original_y = y;
    var encontrado = false;

    var list_size = ds_list_size(global.rampas_pos);
    for (var i = 0; i < list_size; i++) {
        
        var info = global.rampas_pos[| i]; 
        var obj_tipo = info[0]; 
        
        
        if (obj_tipo == rampa_para_criar) {
            original_x = info[1]; 
            original_y = info[2]; 
            encontrado = true;
            break;
        }
    }

    if (!encontrado) {
        show_debug_message("Posição original não encontrada para " + object_get_name(rampa_para_criar));
       
    }

    var nova_rampa_id = instance_create_layer(original_x, original_y, "Instances", rampa_para_criar);
    
    nova_rampa_id.image_xscale = 0.7;
    nova_rampa_id.image_yscale = 0.8;
	nova_rampa_id.phy_rotation = 18.08327;

    
    array_push(global.rampas_selecionadas, nova_rampa_id);
    
    show_debug_message("Rampa CRIADA! ID: " + string(nova_rampa_id) + ". Total: " + string(array_length(global.rampas_selecionadas)));
    
} else {
	
    show_debug_message("Máximo de 10 rampas atingido. Não é possível criar mais.");
}