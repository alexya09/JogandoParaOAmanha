if(place_meeting(x,y,oMiniGame))
{
	for(var i = 0; i < 5; i++)
	{
		oMiniGame.sequencia [i] = "";
	}

	show_message("MORREU");
	//animaçao de morte ou queda
	
	oMiniGame.executando = false;
	
	//oMiniGame.sprite_index = spr_camila_idle_down;

	oMiniGame.x = 93;
	oMiniGame.y = 183;
	
	oSetaCima.botao_pressionado = false;
	oSetaBaixo.botao_pressionado = false;
	oSetaDir.botao_pressionado = false;
	oSetaEsq.botao_pressionado = false;
	oSetaLoop.botao_pressionado = false;
	oSetaRotacao.botao_pressionado = false;
	
}