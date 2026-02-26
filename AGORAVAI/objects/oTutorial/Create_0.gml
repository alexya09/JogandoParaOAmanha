// 1. Verifica se foi criado pelo botão. Se não foi, assume que é automático da Room (false).
if (!variable_instance_exists(id, "sob_demanda")) {
    sob_demanda = false;
}


var fase_bloqueada = (room == Fase2 || room == Fase3_1 || room == Fase4); // Ajuste para os nomes reais das suas rooms

if (!sob_demanda && (global.tutorial_exibido || fase_bloqueada)) {
    instance_destroy();
    exit; 
}


global.tutorial_exibido = true;


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


//if (instance_exists(oParentPlayer)) {
  //  oParentPlayer.canMove = false;
//}



// Dispara o timer de 3 segundos
//alarm[0] = room_speed * 3;