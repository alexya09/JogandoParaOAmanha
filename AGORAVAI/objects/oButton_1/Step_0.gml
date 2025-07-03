if(ativa == 0)
{
	if (distance_to_object(oParentPlayer) <= 25) 
	{
	    if (keyboard_check_pressed(vk_enter)) 
		{
			show_debug_message("alavancou");
			if (state == 0)          
			{
				state = 1;
				image_index = 1;     
	
 
				if(obj_placapontos.pontuacao >= 1)
				{
					 state = 1;
					 image_index = 1;
					 ativa = 1;
					instance_create_layer(185,686,"CAIXAA",oBlocksCHAR);
					//instance_destroy();
				}
			}
		}
	}
}