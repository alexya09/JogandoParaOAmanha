escala_x = image_xscale;
escala_y = image_yscale;

x = 970;
y = 50;

if(room_get_name(room) == "Fase2")
{
	x = 820;
	y = 20; 
	
}

escala_texto_x = 1;
escala_texto_y = 1;

hovered = false;

texto = "";
acao = function() {
	if (!instance_exists(oTutorial)) {
        instance_create_depth(0, 0, -9999, oTutorial, { sob_demanda: true });
    }
}