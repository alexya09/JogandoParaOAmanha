
if(inicializar == true)
{
	show_debug_message("entrou desenhar");
	show_debug_message("Valor de global.dialogue: " + string(global.dialogue));
	var _guil = display_get_gui_width();
	var _guia = display_get_gui_height();

	var _xx = 0;
	var _yy = _guia - 200;
	var _c = c_black;
	
	//var _sprite = textos_grid[#Infos.Retrato,pagina];
	
	draw_set_font(ft_dialogo);
	draw_set_color(c_white);
	
//	draw_sprite_ext(tecla_E,0,_xx,_yy,3,3,0,c_white,1);

	if(textos_grid[#Infos.Lado, pagina] == 0) // esquerda
	{
	

		show_debug_message("DESENHAR");
		show_debug_message("Valor de global.dialogue: " + string(global.dialogue));
		draw_sprite_ext(DialogueBox,0,_xx+200,_yy,3,3,0,c_white,1);
		draw_sprite_ext(NameBox,0,_xx+300,565,3,3,0,c_white,1);
		
		draw_text(_xx+345,585,textos_grid[#Infos.Nome,pagina]);
		
		draw_text_ext(_xx+300, _yy+80,textos_grid[#Infos.Texto,pagina],32,_guil-264);
		
		draw_sprite_ext(Sprite11,1,20,600,3,3,0,c_white,1);
		
	}
	
	// NAO USAR FUNÇAO ABAIXO

	if(textos_grid[#Infos.Lado, pagina] == 1)
	{
		//draw_clear_alpha(c_white, 0); // Limpa a tela sem sobreposição
		

		//draw_rectangle_color(_xx+200,_yy,_guil,_guia,_c,_c,_c,_c,false);
		
		
		draw_sprite_ext(DialogueBox_1,0,_xx+220,_yy,3,3,0,c_white,1);
		draw_sprite_ext(NameBox,0,_xx+300,565,3,3,0,c_white,1);
		
		var _stgw = string_width(textos_grid[#Infos.Nome, pagina]);
		
		draw_text(_xx+300,_yy+80,textos_grid[#Infos.Nome,pagina]);
		
		draw_text_ext(_xx +232, _yy+32,textos_grid[#Infos.Texto,pagina],32,_guil-264);
		
		draw_sprite_ext(_sprite,0,20,600,3,3,-3,c_white,1);
	}
}	
	
	
	