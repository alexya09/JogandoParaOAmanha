if (distance_to_object(oParentPlayer) <= 25) {
    if (keyboard_check_pressed(vk_enter)) 
	{
		show_debug_message("alavancou");
			 /// obj_Alavanca – Mouse Left Pressed
		if (state == 0)          // só troca se ainda estiver para cima
		{
		    state       = 1;
		    image_index = 1;     // frame “para baixo”

		    // ========== Lógica que reseta os blocos ==========
		    with (oBlocksINT)
		    {
		        // Volta cada bloco à posição de origem
		        x = xstart;
		        y = ystart;
				
		        if (variable_instance_exists(id, "xspd"))      xspd      = 0;
		        if (variable_instance_exists(id, "yspd"))      yspd      = 0;
		        if (variable_instance_exists(id, "sliding"))   sliding   = false;
		        if (variable_instance_exists(id, "targetX"))   targetX   = x;
		        if (variable_instance_exists(id, "targetY"))   targetY   = y;
      
		    }
		}

	}
}