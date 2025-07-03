// Evento Step do obj_portal

if (!porta_travada) {
    var bloco = instance_nearest(x, y, oBlocksINT);
    var bloco_proximo = (bloco != noone && distance_to_object(bloco) <= 30 && variable_instance_exists(bloco, "tipoBloco") && bloco.tipoBloco == "char");

    if (bloco_proximo && !porta_fechando_apos_pontuar) {
        porta_aberta = true;
    } else {
        porta_aberta = false;
    }

    if (porta_aberta) {
        // ABRINDO A PORTA
        image_speed = 0; 
        if (image_index < 5) {
            image_index += 0.2;
        } else {
            image_index = 5; 
            
            
            if (distance_to_object(bloco) <= 5) {
                obj_placapontos.pontuacao += 1;
                instance_deactivate_object(bloco);
                porta_aberta = false;
                porta_fechando_apos_pontuar = true;
            }
        }

        with (oParedeInvisivel) {
            solid = false;
            visible = false;
        }

    } else { 
        
        image_speed = 0; 

        if (porta_fechando_apos_pontuar) {
            // FECHANDO APÓS PONTUAR
            if (image_index > 0) {
                image_index -= 0.2;
            } else {
                image_index = 0;
                porta_fechando_apos_pontuar = false;
                porta_travada = true;
            }
        } else {
            // FECHAMENTO NORMAL
            if (image_index > 0) {
                image_index -= 0.2;
            } else {
                image_index = 0; 
            }
        }

        with (oParedeInvisivel) {
            solid = true;
            visible = false;
        }
    }

} else {
    // PORTA TRAVADA 
    image_index = 0;
    image_speed = 0; 
    
    with (oParedeInvisivel) {
        solid = true;
        visible = false;
    }
}