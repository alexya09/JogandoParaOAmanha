// 1. Verifica se foi criado pelo botão. Se não foi, assume que é automático da Room (false).
if (!variable_instance_exists(id, "sob_demanda")) {
    sob_demanda = false;
}

// 2. A Trava: Se NÃO foi chamado pelo botão E já foi exibido antes, se autodestrói e para tudo.
if (!sob_demanda && global.tutorial2_exibido) {
    instance_destroy();
    exit; // O exit impede que o resto do código abaixo seja lido
}

// 3. Marca que já foi exibido (para não aparecer sozinho na próxima vez)
global.tutorial2_exibido = true;

// --- Daqui pra baixo é o seu código normal de configuração ---
margin = 200; 
padding = 50; 
width = display_get_gui_width() - margin * 2;
height = sprite_height;

x = (display_get_gui_width() - width) / 2;
y = display_get_gui_height() - height - 20;

// Text
text_font = Font7_3;
text_color = c_white;
text_speed = 0.6;
text_x = padding / 9;
text_y = padding;
text_width = width - padding * 2;

comecou2 = false;

// Pausa a movimentação
if (instance_exists(camila_player)) {
    camila_player.canMove = false;
}
if (instance_exists(oParentPlayer)) {
    oParentPlayer.canMove = false;
}

// Dispara o timer de 3 segundos
//alarm[0] = room_speed * 3;