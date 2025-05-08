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

    // Define a área de recorte para o texto usando uma superfície
    var texto_x = pos_x + 20;
    var texto_y = pos_y + 20;
    var texto_largura = largura_caixa - 40;
    var texto_altura = altura_caixa - 40;

    // Cria a superfície se necessário
    if (!surface_exists(conteudo_surface)) {
        conteudo_surface = surface_create(texto_largura, texto_altura);
    }

    // Renderiza o conteúdo na superfície
    surface_set_target(conteudo_surface);
    draw_clear_alpha(c_white, 0);
    draw_text(0, -scroll_y, conteudo_texto);
    surface_reset_target();

    // Desenha a superfície na caixa de diálogo
    draw_surface(conteudo_surface, texto_x, texto_y);

    // Desenha a barra de rolagem
    var barra_x = pos_x + largura_caixa - 20;
    var barra_y = pos_y + 20;
    draw_set_color(c_gray);
    draw_rectangle(barra_x, barra_y, barra_x + 10, barra_y + altura_caixa - 40, false);
    draw_set_color(c_white);
    draw_rectangle(barra_x, barra_y + barra_pos_y, barra_x + 10, barra_y + barra_pos_y + barra_altura, false);
}
