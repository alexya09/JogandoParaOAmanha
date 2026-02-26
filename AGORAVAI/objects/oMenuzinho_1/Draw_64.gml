draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

draw_set_halign(fa_center); // Centraliza horizontalmente
draw_set_valign(fa_middle); // Centraliza verticalmente
draw_set_font(ft_menu2);
draw_set_color(c_white);

draw_text_transformed(x, y, texto, escala_texto_x, escala_texto_y, 0);

draw_set_halign(fa_left);
draw_set_valign(fa_top);