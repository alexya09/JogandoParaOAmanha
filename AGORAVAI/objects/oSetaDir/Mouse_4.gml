image_xscale = escala_x * .3;
image_yscale = escala_y * 1.3;

escala_texto_x = .3;
escala_texto_y = 1.3;

acao();

botao_pressionado = true;

for (var i = 0; i < 5; i++) {
    if (oMiniGame.sequencia[i] == "") {
        oMiniGame.sequencia[i] = "direita";
		localadc=i;
		adicionar_seta("direita", localadc);
        break;
    }
}
