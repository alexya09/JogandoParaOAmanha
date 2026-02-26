if (place_meeting(x, y, oMiniGame)) {
    startDialogue("bateu");
	//room_goto(GameOver);
	//event_inherited();

oMiniGame.x = 148;
oMiniGame.y = 264;
oMiniGame.sprite_index = spr_camila_idle_down;

oMiniGame.destino_x = oMiniGame.x;  
oMiniGame.destino_y = oMiniGame.y;

oMiniGame.sequencia = [];  
oMiniGame.setas_pressionadas = [];

oMiniGame.executando = false;
oMiniGame.index_sequencia = 0;

show_debug_message("Sequência apagada e posição resetada!");

}
