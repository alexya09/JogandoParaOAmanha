draw_self();
draw_set_font(ft_dialogo_1); 
draw_set_color(c_white);

//var texto_largura = string_width(ptc);
//var texto_altura = string_height(ptc);

// Calcular posição central baseada na origem do sprite
//var x_texto = x - texto_largura / 2;
//var y_texto = y - texto_altura / 2;

// Desenhar o texto centralizado no sprite


//draw_set_font(ft_dialogo);
//draw_set_color(c_white);
	
draw_text_ext(x + 15, y + 1 ,ptc,50,string_width(ptc));
draw_text_ext(x + 6, y + 1 ,global.pontuacao,50,string_width(global.pontuacao));

//draw_text_ext(0,0,camila_player.state_char,0,string_width(ptc));
//draw_text_ext(90,0,global.pontuacao,50,string_width(ptc));
