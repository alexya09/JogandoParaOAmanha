if (placa) {
    var largura_tela = display_get_gui_width();
    var altura_tela = display_get_gui_height();

    // Desenha sobreposição escura
    draw_set_alpha(0.5);
    draw_set_color(c_black);
    draw_rectangle(0, 0, largura_tela, altura_tela, false);
    draw_set_alpha(1);

    // Define as dimensões da caixa de diálogo
    largura_caixa = 800;
    altura_caixa = 500;
    pos_x = (largura_tela - largura_caixa) / 2;
    pos_y = (altura_tela - altura_caixa) / 2;

    // Desenha a caixa de diálogo
    draw_sprite_ext(InfoBox, 0, pos_x, pos_y, 1, 1, 0, c_white, 1);

    // Define a fonte e a cor do texto
    draw_set_font(ft_dialogo);
    draw_set_color(c_white);

}
