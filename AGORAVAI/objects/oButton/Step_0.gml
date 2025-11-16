if (distance_to_object(oParentPlayer) <= 25) {
    if (keyboard_check_pressed(vk_enter)) 
	{
		show_debug_message("alavancou");
			
		if (state == 0)          
		{
		    state       = 1;
		    image_index = 1;     

		    with (oBlocksINT)
		    {
		        
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