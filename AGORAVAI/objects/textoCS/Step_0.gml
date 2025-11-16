if (!dialogo_iniciado) {
    startDialogue("cutscene");
    dialogo_iniciado = true;
}

var dialogo_esta_ativo = instance_exists(obj_textbox);

if (dialogo_iniciado == true && dialogo_esta_ativo == false) {

    if (id_cutscene_atual == -1) {
        
        var camada_id = layer_get_id("Instances_Cutscenes");
        id_cutscene_atual = layer_sequence_create(camada_id, 640, 360, sq_intro); 
    }
    else {
        
        if (layer_sequence_is_finished(id_cutscene_atual)) {
            layer_sequence_destroy(id_cutscene_atual);
            id_cutscene_atual = -1;
            
            room_goto(Fase0);
        }
    }
}