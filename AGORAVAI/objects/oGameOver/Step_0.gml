if (place_meeting(x, y, oMiniGame)) {
    show_message("MORREU");

	/*oMiniGame.executando = false;
	oMiniGame.index_sequencia = 0;
	//oMiniGame.destino_x = x;
	oMiniGame.destino_y = y;

   
    oMiniGame.x = 172;
    oMiniGame.y = 250;
    oMiniGame.sprite_index = spr_camila_idle_down;

    
    for (var i = 0; i < array_length(oMiniGame.sequencia); i++) {
        oMiniGame.sequencia[i] = "";
    }
    
	oMiniGame.setas_pressionadas = [];
    exit; */
	
	room_goto(GameOver);
}
