escala_x = image_xscale;
escala_y = image_yscale;

escala_texto_x = 1;
escala_texto_y = 1;

botao_pressionado = false;

acao = function()
{
	
}

if (!instance_exists(oMiniGame)) {
    instance_create_layer(x, y, "Instances", oMiniGame);
}
