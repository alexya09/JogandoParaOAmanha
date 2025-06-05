image_xscale = escala_x * .3;
image_yscale = escala_y * 1.3;

escala_texto_x = .3;
escala_texto_y = 1.3;

acao();

for(var i = 0; i < 5; i++)
{
	oMiniGame.sequencia [i] = "";
}

oMiniGame.executando = false;

oSetaCima.botao_pressionado = false;
oSetaBaixo.botao_pressionado = false;
oSetaDir.botao_pressionado = false;
oSetaEsq.botao_pressionado = false;
oSetaLoop.botao_pressionado = false;
oSetaRotacao.botao_pressionado = false;