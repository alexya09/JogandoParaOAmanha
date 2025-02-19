if (distance_to_object(camila_player) <= 10 and !global.dialogue) {
   /* 
	var bubble_x = x+25;
	var bubble_y = y-100;
	
    var frame = floor(current_time / 100) mod sprite_get_number(tecla_E);

    draw_sprite_ext(tecla_E, frame, bubble_x, bubble_y, 3, 3, 0, c_white, 1);
	*/

   
    // Limita para não sair da tela na horizontal
   var bx = balloon_x; // Usa as variáveis definidas no Step
    var by = balloon_y;

    // Limita para não sair da tela na horizontal
    if (bx < 0) {
        bx = 0;
    }
    if (bx > room_width) {
        bx = room_width;
    }

    // Se sair da tela superior, move para baixo da cabeça
    if (by < 0) {
        by = y + sprite_height / 2 + 10;
    }

    // Desenha o sprite do balão acima da cabeça do NPC
    draw_sprite(tecla_E, 0, bx, by);
}

