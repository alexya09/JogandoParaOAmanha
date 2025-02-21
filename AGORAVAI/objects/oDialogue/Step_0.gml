show_debug_message("Valor de global.dialogue: " + string(global.dialogue));

if(inicializar == false)
{
	src_textos();
	inicializar = true;
	global.dialogue = true;
	show_debug_message("entrou inicializar");
}

if(keyboard_check_pressed(ord("E"))) // and global.dialogue == true)
{
	show_debug_message("ativou dialogo");
	show_debug_message("Valor de global.dialogue: " + string(global.dialogue));

	if(pagina < ds_grid_height(textos_grid)-1)
	{
		show_debug_message("Valor de global.dialogue: " + string(global.dialogue));
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