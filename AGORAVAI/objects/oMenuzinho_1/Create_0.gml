escala_x = image_xscale;
escala_y = image_yscale;

x = 50;
y = 30;

escala_texto_x = 1;
escala_texto_y = 1;

hovered = false;

texto = "";
acao = function() {
	if (!instance_exists(oTutorial_1)) {
        instance_create_depth(0, 0, -9999, oTutorial_1, { sob_demanda: true });
    }
}