/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(inicializar == true)
{
	//global.dialogue = true;
	var _guil = display_get_gui_width();
	var _guia = display_get_gui_height();

	var _xx = 0;
	var _yy = _guia - 200;
	var _c = c_black;
	

	var _sprite = textos_grid[#Infos.Retrato,pagina];
	
	draw_set_font(ft_dialogo);
	draw_set_color(c_white);

	if(textos_grid[#Infos.Lado, pagina] == 0) // esquerda
	{
		//draw_clear_alpha(c_white, 0); // Limpa a tela sem sobreposição

		
		draw_rectangle_color(_xx+200,_yy,_guil,_guia,_c,_c,_c,_c,false);
		
		draw_text(_xx+16,_yy-32,textos_grid[#Infos.Nome,pagina]);
		
		draw_text_ext(_xx +232, _yy+32,textos_grid[#Infos.Texto,pagina],32,_guil-264);
		
		draw_sprite_ext(_sprite,0,20,600,3,3,0,c_white,1);
		

		
	}

	if(textos_grid[#Infos.Lado, pagina] == 1)
	{
		//draw_clear_alpha(c_white, 0); // Limpa a tela sem sobreposição
		

		draw_rectangle_color(_xx+200,_yy,_guil,_guia,_c,_c,_c,_c,false);
		
		var _stgw = string_width(textos_grid[#Infos.Nome, pagina]);
		
		draw_text(_guil-16-_stgw,_yy-32,textos_grid[#Infos.Nome,pagina]);
		
		draw_text_ext(_xx +232, _yy+32,textos_grid[#Infos.Texto,pagina],32,_guil-264);
		
		draw_sprite_ext(_sprite,0,20,600,3,3,0,c_white,1);
	}
}	