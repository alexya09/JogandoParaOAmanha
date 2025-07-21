
var largura_tela = display_get_gui_width();
var altura_tela = display_get_gui_height();
	
// Draw the box
//draw_sprite_stretched(InfoBox, 0, x, y, width, height);
draw_sprite(spr_helpbox,0,80,60);
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

draw_text(108,135,"Tente interagir \ncom outros personagens!"); 

