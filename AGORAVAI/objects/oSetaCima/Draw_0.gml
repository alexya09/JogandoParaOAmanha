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
    var spr = sSetaCima; 

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

