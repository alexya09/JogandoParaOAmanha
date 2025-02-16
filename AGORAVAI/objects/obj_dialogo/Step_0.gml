/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(inicializar == false)
{
	src_textos();
	inicializar = true;
	global.dialogue = false;
}

if(keyboard_check_pressed(ord("E")) and global.dialogue == true)
{
	//instance_deactivate_object(obj_E);
	//draw_sprite_ext(tecla_E,0,0,0,3,3,0,c_white,1);
	if(pagina < ds_grid_height(textos_grid)-1)
	{
		pagina++;
	}
	
	else
	{
		show_debug_message("Destruindo obj_dialogo...");
		instance_destroy();
		instance_deactivate_layer("Dialogo");
		global.dialogue = false;
	}
}