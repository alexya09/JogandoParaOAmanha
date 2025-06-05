if(place_meeting(x,y,oMiniGame))
{
	show_debug_message("MORREU");
	//animaçao de morte ou queda
	oMiniGame.executando = false;
	oMiniGame.index_sequencia = spr_camila_idle_down;
}