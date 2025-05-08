placa = false;

acabouTexto = false;

// Conteúdo extenso da placa
conteudo_texto = "Seu conteúdo extenso aqui...";

// Posição vertical da rolagem
scroll_y = 0;

// Altura da caixa de diálogo
altura_caixa = 500;
largura_caixa = 0;
// Altura total do conteúdo
altura_conteudo = string_height(conteudo_texto);

// Altura da barra de rolagem
barra_altura = max((altura_caixa / altura_conteudo) * altura_caixa, 20);

// Posição vertical da barra de rolagem
barra_pos_y = 0;

// Estado de arrasto da barra
barra_arrastando = false;

// Posição inicial do clique do mouse
barra_mouse_offset = 0;

// Superfície para renderizar o conteúdo
conteudo_surface = -1;

pos_x = x;
pos_y = y;