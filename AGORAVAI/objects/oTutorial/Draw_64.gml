
var largura_tela = display_get_gui_width();
var altura_tela = display_get_gui_height();
	
draw_set_alpha(0.5);
draw_set_color(c_black);
draw_rectangle(0, 0, largura_tela, altura_tela, false);
draw_set_alpha(1);

// Draw the box
//draw_sprite_stretched(InfoBox, 0, x, y, width, height);
draw_sprite(Tutorial,0,(display_get_gui_width() - width) / 2.5,display_get_gui_height() - 670);
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

draw_text(x + 230,y - 540,"Use as setas ou WASD"); 
draw_text(x + 230 ,y - 510,"para se movimentar");
draw_sprite(setas,0, x + 50, y - 600);

draw_sprite(teclas, 0, x + 50, y - 340);
draw_text(x + 200,y - 255,"Use a tecla SPACE"); 
draw_text(x + 200, y - 230,"para empurrar objetos");

draw_text(x + 200,y - 350,"Use a tecla ENTER");
draw_text(x + 200,y - 320,"para iniciar dialogos");

draw_text(x + 200,y - 170,"Use a tecla SHIFT");
draw_text(x + 200,y - 140,"para interagir com objetos");