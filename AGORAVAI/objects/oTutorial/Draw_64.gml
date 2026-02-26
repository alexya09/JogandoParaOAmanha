
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
//draw_text(x + 280 ,y - 590,"para fechar este tutorial");

draw_set_font(text_font);
draw_text(x + 280,y - 520,"Use as setas ou WASD"); 
draw_text(x + 280 ,y - 490,"para se movimentar");
draw_sprite(spr_setas_1,0, x + 50, y - 550);

draw_sprite(spr_space, 0, x + 40, y - 270);
draw_text(x + 200,y - 265,"Use a tecla SPACE"); 
draw_text(x + 200, y - 240,"para empurrar objetos");

draw_sprite(spr_enter, 0, x + 50, y - 380);
draw_text(x + 200,y - 380,"Use a tecla ENTER");
draw_text(x + 200,y - 350,"para iniciar dialogos");

draw_sprite(spr_e, 0, x + 50, y - 180);
draw_text(x + 200,y - 180,"Use a tecla E");
draw_text(x + 200,y - 150,"para interagir com objetos");
draw_text(x + 200,y - 120,"e navegar pelas aulas");