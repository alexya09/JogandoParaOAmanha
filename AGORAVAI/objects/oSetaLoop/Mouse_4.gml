image_xscale = escala_x * .3;
image_yscale = escala_y * 1.3;

escala_texto_x = .3;
escala_texto_y = 1.3;

acao();

var maxIndex = array_length(oMiniGame.sequencia) - 1;


//botao_pressionado = true;

for (var i = 0; i < 5; i++) 
{
	if ((i + 2) <= maxIndex && oMiniGame.sequencia[i + 2] == "")
	{
		 if (((i+2) <= 5) && (oMiniGame.sequencia[i+2] == "" )) 
		 {
			botao_pressionado = true;
			oMiniGame.sequencia[i+2] = "loop";
			//oMiniGame.sequencia[i+3] = "loop";
			break;
		 }
    }
}