draw_self();

draw_set_halign(1);
draw_set_valign(1);
draw_set_font(ft_menu2);
draw_set_color(c_white);
//draw_text(x,y,texto);

draw_text_transformed(x,y,texto,escala_texto_x,escala_texto_y,0);

draw_set_halign(-1);
draw_set_valign(-1);

for (var i = 0; i < array_length(oMiniGame.setas_pressionadas); i++) {
    var seta = oMiniGame.setas_pressionadas[i];
    var spr = sSetaEsq; 

    switch (seta.direcao) {
        case "baixo": spr = sSetaBaixo; 
		break;
        case "cima": spr = sSetaCima; 
		break;
        case "esquerda": spr = sSetaEsq; 
		break;
        case "direita": spr = sSetaDir; 
		break;
    }

    var pos_y = 75 + (seta.posicao * 41);
    draw_sprite_ext(spr, 0, 450, pos_y, 0.7, 0.7, 0, c_white, 1);
}

/*if(botao_pressionado)
{
	if(localadc == 0)
	//draw_sprite(sSetaBaixo,1,447,95);
	draw_sprite_ext(sSetaEsq,0,450,75,0.7,0.7,0,c_white,1);
	if(localadc == 1)
	//draw_sprite(sSetaBaixo,1,447,149);
	draw_sprite_ext(sSetaEsq,0,450,116,0.7,0.7,0,c_white,1);
	if(localadc == 2)
	//draw_sprite(sSetaBaixo,1,447,203);
	draw_sprite_ext(sSetaEsq,0,450,157,0.7,0.7,0,c_white,1);
	if(localadc == 3)
	//draw_sprite(sSetaBaixo,1,447,257);
	draw_sprite_ext(sSetaEsq,0,450,199,0.7,0.7,0,c_white,1);
	if(localadc == 4)
	draw_sprite_ext(sSetaEsq,0,450,240,0.7,0.7,0,c_white,1);
}
*/