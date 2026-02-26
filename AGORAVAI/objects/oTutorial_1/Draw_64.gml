var largura_tela = display_get_gui_width();
var altura_tela = display_get_gui_height();
	
draw_set_alpha(0.5);
draw_set_color(c_black);
draw_rectangle(0, 0, largura_tela, altura_tela, false);
draw_set_alpha(1);

// Draw the box
//draw_sprite_stretched(InfoBox, 0, x, y, width, height);
draw_sprite(spr_tutorial,0,(display_get_gui_width() - width) / 2.5,display_get_gui_height() - 670);
/*
var draw_text_x = x;
var draw_text_y = y;
var draw_text_width = text_width;
var finished = text_progress == text_length; */


// Text
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(text_font);
draw_set_color(text_color);

draw_set_font(Font7_4);
draw_text(x + 80,y - 595,"Aperte qualquer tecla para fechar este menu"); 

draw_set_font(text_font);
draw_text(x + 230,y - 540,"Interaja com a placa"); 
draw_text(x + 230 ,y - 510,"utilizando a tecla E");
//draw_sprite(spr_placa,0, x + 50, y - 600);
gpu_set_blendmode(bm_normal);
draw_set_color(c_white);
draw_sprite_ext(spr_placa, 0, x + 50, y - 550, 2, 2, 0, c_white, 1);

draw_sprite_ext(sSpace, 0, x + 40, y - 400, 5, 5, 0, c_white, 1);
draw_text(x + 260,y - 420,"Use a tecla ESPAÇO");
draw_text(x + 270,y - 390,"para empurrar objetos");

//draw_sprite(sNEXT, 0, x + 50, y - 340);
draw_sprite_ext(sNEXT, 0, x + 70, y - 310, 5, 5, 0, c_white, 1);
draw_text(x + 125,y - 300,"Use ENTER nesta alavanca para "); 
draw_text(x + 125, y - 270,"chamar a próxima caixa");

//draw_sprite(sRESET, 0, x + 50, y - 340);
draw_sprite_ext(sRESET, 0, x + 70, y - 190, 5, 5, 0, c_white, 1);
draw_text(x + 120,y - 190,"Use ENTER nesta alavanca para "); 
draw_text(x + 120, y - 160,"reiniciar a posição da caixa");

