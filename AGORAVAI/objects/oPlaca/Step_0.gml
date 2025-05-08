if (distance_to_object(oParentPlayer) <= 50) {
    if (keyboard_check_pressed(ord("E"))) {
		placa = true;
		oParentPlayer.canMove = false;
    }
}
/*
if (acabouTexto && keyboard_check_pressed(ord("E"))) {
    placa = false;
    oParentPlayer.canMove = true;
}*/

if (placa) {
    // Atualiza a altura total do conteúdo
    altura_conteudo = string_height(conteudo_texto);

    // Atualiza a altura da barra de rolagem
    barra_altura = max((altura_caixa / altura_conteudo) * altura_caixa, 20);

    // Área da barra de rolagem
    var barra_x = pos_x + largura_caixa - 20;
    var barra_y = pos_y + 20;

    // Verifica se o mouse está sobre a barra
    var mouse_sobre_barra = point_in_rectangle(mouse_x, mouse_y, barra_x, barra_y + barra_pos_y, barra_x + 10, barra_y + barra_pos_y + barra_altura);

    // Início do arrasto
    if (mouse_check_button_pressed(mb_left) && mouse_sobre_barra) {
        barra_arrastando = true;
        barra_mouse_offset = mouse_y - (barra_y + barra_pos_y);
    }

    // Durante o arrasto
    if (barra_arrastando) {
        barra_pos_y = clamp(mouse_y - barra_y - barra_mouse_offset, 0, altura_caixa - barra_altura);
        scroll_y = (barra_pos_y / (altura_caixa - barra_altura)) * (altura_conteudo - altura_caixa);
    }

    // Fim do arrasto
    if (mouse_check_button_released(mb_left)) {
        barra_arrastando = false;
    }

    // Rolagem com a roda do mouse
    if (mouse_wheel_up()) {
        scroll_y = max(scroll_y - 10, 0);
    }
    if (mouse_wheel_down()) {
        scroll_y = min(scroll_y + 10, altura_conteudo - altura_caixa);
    }

    // Atualiza a posição da barra com base na rolagem
    barra_pos_y = (scroll_y / (altura_conteudo - altura_caixa)) * (altura_caixa - barra_altura);
}
