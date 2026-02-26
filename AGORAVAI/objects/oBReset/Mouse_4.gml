event_inherited();


with (oMiniGame) { 
    x = 148;
    y = 264;
    sprite_index = spr_camila_idle_down;
    
   
    destino_x = x; 
    destino_y = y;

    sequencia = [];  
    setas_pressionadas = [];

    executando = false;
    index_sequencia = 0;
}

show_debug_message("Sequência apagada e posição resetada!");