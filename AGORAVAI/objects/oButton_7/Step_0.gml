if(ativa == 0)
{
	if (distance_to_object(oParentPlayer) <= 25) 
	{
	    if (keyboard_check_pressed(vk_enter)) 
		{
			if (state == 0)          
			{
			    state = 1;
			    image_index = 1;
				ativa = 1;

			      if(global.pontuacao = 3)
				{
					instance_create_layer(185,236.5,"CAIXAA",oBlocksFLOAT);
					instance_destroy();
				}
			}
		}
	}
}