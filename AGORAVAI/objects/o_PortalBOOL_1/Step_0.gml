var box = instance_nearest(x, y, oBlocksINT);

if (box != noone && distance_to_object(box) <= 5) {
    if (variable_instance_exists(box, "tipoBloco") && box.tipoBloco == "bool") {
        // Libera a barreira
        with (oParedeInvisivel) {
            solid = false;
            visible = false; // Pode deixar true se estiver testando
        }

        obj_placapontos3.pontuacao += 1;
        instance_deactivate_object(box); // ou instance_destroy(box)

    } else {
        // Impede entrada
        with (oParedeInvisivel) {
            solid = true;
            visible = false;
        }

        show_debug_message("Tipo de bloco inválido para pontuação!");
    }
}
