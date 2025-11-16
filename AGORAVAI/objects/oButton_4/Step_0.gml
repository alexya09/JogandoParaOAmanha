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

			      if(global.pontuacao = 1 && !instance_exists(oBlocksBOOL))
				{
					instance_create_layer(589,181,"CAIXAA",oBlocksBOOL);
					//instance_destroy();
				}
				  if(global.pontuacao = 3 && !instance_exists(oBlocksFLOAT1))
				{
					instance_create_layer(589,181,"CAIXAA",oBlocksFLOAT1);
				}
					if(global.pontuacao = 2 && !instance_exists(oBlocksCHAR_2))
				{
					instance_create_layer(589,181,"CAIXAA",oBlocksCHAR_2);
				}
				
			}
		}
	}
}