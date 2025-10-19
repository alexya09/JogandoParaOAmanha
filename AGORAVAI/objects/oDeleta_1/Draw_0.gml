draw_self();

draw_set_halign(1);
draw_set_valign(1);
draw_set_font(ft_menu2);
draw_set_color(c_white);
//draw_text(x,y,texto);

draw_text_transformed(x,y,texto,escala_texto_x,escala_texto_y,0);

draw_set_halign(-1);
draw_set_valign(-1);